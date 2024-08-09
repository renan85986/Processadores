#include "ap_int.h"
#include <iostream>

#define ADDR_WIDTH 8
#define DATA_WIDTH 32

void bram(ap_uint<ADDR_WIDTH> addr,
          ap_uint<DATA_WIDTH>& dout,
          ap_uint<DATA_WIDTH> din,
          bool we,
          bool clk);

int main() {
    ap_uint<ADDR_WIDTH> addr;
    ap_uint<DATA_WIDTH> din, dout;
    bool we;
    bool clk = 1;

    // Escreve na BRAM
    addr = 0;
    din = 42;
    we = true;
    bram(addr, dout, din, we, clk);

    // Lê da BRAM
    we = false;
    bram(addr, dout, din, we, clk);

    // Verifica a saída
    std::cout << "Read: " << dout << std::endl;

    return 0;
}
