#include "axi4_lite.h"
#include "assert.h"
#include <ap_int.h>

#define DATA_WIDTH 32

void skidbuffer(hls::stream<ap_uint<DATA_WIDTH>>& s_axis,
                hls::stream<ap_uint<DATA_WIDTH>>& m_axis) {
    #pragma HLS INTERFACE axis port=s_axis
    #pragma HLS INTERFACE axis port=m_axis
    #pragma HLS INTERFACE ap_ctrl_none port=return

    ap_uint<DATA_WIDTH> buffer;
    bool buffer_valid = false;

    while (!s_axis.empty() || buffer_valid) {
        if (!buffer_valid && !s_axis.empty()) {
            buffer = s_axis.read();
            buffer_valid = true;
        }
        if (buffer_valid && !m_axis.full()) {
            m_axis.write(buffer);
            buffer_valid = false;
        }
    }
}

void bram(ap_uint<ADDR_WIDTH> addr,
          ap_uint<DATA_WIDTH>& dout,
          ap_uint<DATA_WIDTH> din,
          bool we,
          bool clk) {
    #pragma HLS INTERFACE s_axilite port=addr bundle=control
    #pragma HLS INTERFACE s_axilite port=dout bundle=control
    #pragma HLS INTERFACE s_axilite port=din bundle=control
    #pragma HLS INTERFACE s_axilite port=we bundle=control
    #pragma HLS INTERFACE s_axilite port=clk bundle=control
    #pragma HLS INTERFACE ap_ctrl_none port=return

    static ap_uint<DATA_WIDTH> ram[1 << ADDR_WIDTH];

    if (we) {
        ram[addr] = din;
    }
    dout = ram[addr];
}

void nmp_axi4l_ip(ap_uint<ADDR_WIDTH> awaddr,
                  bool awvalid,
                  bool& awready,
                  ap_uint<DATA_WIDTH> wdata,
                  bool wvalid,
                  bool& wready,
                  bool& bvalid,
                  ap_uint<ADDR_WIDTH> araddr,
                  bool arvalid,
                  bool& arready,
                  ap_uint<DATA_WIDTH>& rdata,
                  bool& rvalid,
                  bool clk,
                  bool rst_n) {
    #pragma HLS INTERFACE s_axilite port=awaddr bundle=control
    #pragma HLS INTERFACE s_axilite port=awvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=awready bundle=control
    #pragma HLS INTERFACE s_axilite port=wdata bundle=control
    #pragma HLS INTERFACE s_axilite port=wvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=wready bundle=control
    #pragma HLS INTERFACE s_axilite port=bvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=araddr bundle=control
    #pragma HLS INTERFACE s_axilite port=arvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=arready bundle=control
    #pragma HLS INTERFACE s_axilite port=rdata bundle=control
    #pragma HLS INTERFACE s_axilite port=rvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=clk bundle=control
    #pragma HLS INTERFACE s_axilite port=rst_n bundle=control
    #pragma HLS INTERFACE ap_ctrl_none port=return

    static ap_uint<DATA_WIDTH> regfile[1 << ADDR_WIDTH];

    if (!rst_n) {
        awready = 0;
        wready = 0;
        bvalid = 0;
        arready = 0;
        rvalid = 0;
    } else {
        if (awvalid && !awready) {
            awready = 1;
        } else {
            awready = 0;
        }

        if (wvalid && !wready) {
            wready = 1;
            regfile[awaddr] = wdata;
        } else {
            wready = 0;
        }

        if (wready && wvalid && !bvalid) {
            bvalid = 1;
        } else if (bvalid && awready) {
            bvalid = 0;
        }

        if (arvalid && !arready) {
            arready = 1;
            rdata = regfile[araddr];
        } else {
            arready = 0;
        }

        if (arready && arvalid && !rvalid) {
            rvalid = 1;
        } else if (rvalid && arready) {
            rvalid = 0;
        }
    }
}
