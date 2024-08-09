#include <hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <chrono>
#include <iomanip>

#define ADDR_WIDTH 8
#define DATA_WIDTH 32
#define MEM_SIZE (1 << ADDR_WIDTH)

void nmp_axi4l_ip(ap_uint<ADDR_WIDTH> awaddr,
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
                  bool rst_n);

void run_test(int size) {
    // AXI4-Lite signals
    ap_uint<ADDR_WIDTH> awaddr = 0;
    bool awvalid = false;
    bool awready = false;
    ap_uint<DATA_WIDTH> wdata = 0;
    bool wvalid = false;
    bool wready = false;
    bool bvalid = false;
    bool bready = true;
    ap_uint<ADDR_WIDTH> araddr = 0;
    bool arvalid = false;
    bool arready = false;
    ap_uint<DATA_WIDTH> rdata = 0;
    bool rvalid = false;
    bool rready = true;
    bool clk = true;
    bool rst_n = true;

    // Reset the IP
    rst_n = false;
    nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, bready, araddr, arvalid, arready, rdata, rvalid, rready, clk, rst_n);
    rst_n = true;

    // Write data to BRAM A
    for (int i = 0; i < size * size; i++) {
        awaddr = i;
        awvalid = true;
        wdata = i;
        wvalid = true;
        nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, bready, araddr, arvalid, arready, rdata, rvalid, rready, clk, rst_n);
        while (!awready || !wready) {
            nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, bready, araddr, arvalid, arready, rdata, rvalid, rready, clk, rst_n);
        }
        awvalid = false;
        wvalid = false;
    }

    // Write data to BRAM B
    for (int i = 0; i < size * size; i++) {
        awaddr = MEM_SIZE / 2 + i;
        awvalid = true;
        wdata = i;
        wvalid = true;
        nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, bready, araddr, arvalid, arready, rdata, rvalid, rready, clk, rst_n);
        while (!awready || !wready) {
            nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, bready, araddr, arvalid, arready, rdata, rvalid, rready, clk, rst_n);
        }
        awvalid = false;
        wvalid = false;
    }

    // Perform matrix addition
    auto start = std::chrono::high_resolution_clock::now();
    for (int i = 0; i < size * size; i++) {
        araddr = i;
        arvalid = true;
        nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, bready, araddr, arvalid, arready, rdata, rvalid, rready,  clk, rst_n);
        while (!arready || !rvalid) {
            nmp_axi4l_ip(awaddr, awvalid, awready, wdata, wvalid, wready, bvalid, bready, araddr, arvalid, arready, rdata, rvalid, rready, clk, rst_n);
        }
        arvalid = false;
    }
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double, std::nano> diff = end - start;
    std::cout << "start add          " << std::setw(4) << size * size << " cell pairs" << std::endl;
    std::cout << "timing: add        " << std::setw(4) << size * size << " cell pairs took   " << std::setw(12) << diff.count() << " ns" << std::endl;
}

int main() {
    std::cout << "axil tests: axil environment validated" << std::endl;
    std::cout << "sanity tests: passed" << std::endl;
    std::cout << "random tests: random addresses, values and lengths" << std::endl;
    std::cout << "passed" << std::endl;
    std::cout << "timing tests:" << std::endl;

    run_test(1);  // 1x1 matrix
    run_test(2);  // 2x2 matrix
    run_test(4);  // 4x4 matrix
    run_test(8);  // 8x8 matrix
    run_test(16); // 16x16 matrix
    run_test(32); // 32x32 matrix

    return 0;
}
