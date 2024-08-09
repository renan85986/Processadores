#include "ap_int.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

#define ADDR_WIDTH 8
#define DATA_WIDTH 32
#define MEM_SIZE (1 << ADDR_WIDTH)

typedef ap_axiu<DATA_WIDTH, 1, 1, 1> AXI_VAL;

void nmp_axi4l_ip(
    ap_uint<ADDR_WIDTH> awaddr,
    bool awvalid,
    bool& awready,
    ap_uint<DATA_WIDTH> wdata,
    bool wvalid,
    bool& wready,
    bool& bvalid,
    bool bready,
    ap_uint<ADDR_WIDTH> araddr,
    bool arvalid,
    bool& arready,
    ap_uint<DATA_WIDTH>& rdata,
    bool& rvalid,
    bool rready,
    bool clk,
    bool rst_n
) {
    #pragma HLS INTERFACE s_axilite port=awaddr bundle=control
    #pragma HLS INTERFACE s_axilite port=awvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=awready bundle=control
    #pragma HLS INTERFACE s_axilite port=wdata bundle=control
    #pragma HLS INTERFACE s_axilite port=wvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=wready bundle=control
    #pragma HLS INTERFACE s_axilite port=bvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=bready bundle=control
    #pragma HLS INTERFACE s_axilite port=araddr bundle=control
    #pragma HLS INTERFACE s_axilite port=arvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=arready bundle=control
    #pragma HLS INTERFACE s_axilite port=rdata bundle=control
    #pragma HLS INTERFACE s_axilite port=rvalid bundle=control
    #pragma HLS INTERFACE s_axilite port=rready bundle=control
    #pragma HLS INTERFACE s_axilite port=clk bundle=control
    #pragma HLS INTERFACE s_axilite port=rst_n bundle=control
    #pragma HLS INTERFACE ap_ctrl_none port=return

    static ap_uint<DATA_WIDTH> bram_a[MEM_SIZE];
    static ap_uint<DATA_WIDTH> bram_b[MEM_SIZE];
    static ap_uint<DATA_WIDTH> bram_res[MEM_SIZE];

    static bool compute_done = false;
    static ap_uint<ADDR_WIDTH> compute_idx = 0;

    // Reset logic
    if (!rst_n) {
        awready = false;
        wready = false;
        bvalid = false;
        arready = false;
        rvalid = false;
        compute_done = false;
        compute_idx = 0;
    } else {
        // Write address channel handshake
        if (awvalid && !awready) {
            awready = true;
        } else {
            awready = false;
        }

        // Write data channel handshake
        if (wvalid && !wready) {
            wready = true;
            if (awaddr[ADDR_WIDTH-1] == 0) {
                bram_a[awaddr.range(ADDR_WIDTH-2, 0)] = wdata;
            } else {
                bram_b[awaddr.range(ADDR_WIDTH-2, 0)] = wdata;
            }
        } else {
            wready = false;
        }

        // Write response channel
        if (wready && wvalid && !bvalid) {
            bvalid = true;
        } else if (bvalid && bready) {
            bvalid = false;
        }

        // Read address channel handshake
        if (arvalid && !arready) {
            arready = true;
            if (compute_done) {
                rdata = bram_res[araddr.range(ADDR_WIDTH-2, 0)];
            } else {
                rdata = 0;
            }
        } else {
            arready = false;
        }

        // Read data channel handshake
        if (arready && arvalid && !rvalid) {
            rvalid = true;
        } else if (rvalid && rready) {
            rvalid = false;
        }

        // Perform matrix addition
        if (!compute_done) {
            bram_res[compute_idx] = bram_a[compute_idx] + bram_b[compute_idx];
            compute_idx++;
            if (compute_idx == MEM_SIZE) {
                compute_done = true;
            }
        }
    }
}
