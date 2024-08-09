#include "ap_int.h"
#include <iostream>

#define ADDR_WIDTH 8
#define DATA_WIDTH 32

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
                  bool rst_n);

int main() {
    ap_uint<ADDR_WIDTH> awaddr, araddr;
    ap_uint<DATA_WIDTH> wdata, rdata;
    bool awvalid, awready, wvalid, wready, bvalid, arvalid, arready, rvalid;
    bool clk = 1;
    bool rst_n = 0;

    // Reset
    nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, araddr, arvalid, arready, rdata, rvalid, clk, rst_n);
    rst_n = 1;

    // Write transaction
    awaddr = 0;
    awvalid = true;
    wdata = 0xDEADBEEF;
    wvalid = true;
    nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, araddr, arvalid, arready, rdata, rvalid, clk, rst_n);

    // Simulate a clock cycle
    clk = !clk;
    nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, araddr, arvalid, arready, rdata, rvalid, clk, rst_n);

    awvalid = false;
    wvalid = false;

    // Read transaction
    araddr = 0;
    arvalid = true;
    nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, araddr, arvalid, arready, rdata, rvalid, clk, rst_n);

    // Simulate another clock cycle
    clk = !clk;
    nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, araddr, arvalid, arready, rdata, rvalid, clk, rst_n);

    arvalid = false;

    // Check results
    std::cout << "Read: " << std::hex << rdata << std::endl;

    return 0;
}
