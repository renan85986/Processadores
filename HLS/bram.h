#ifndef BRAM_H
#define BRAM_H

#include <ap_int.h>

#define PORT_WIDTH 32
#define RAM_ADDR_BITS 14

typedef ap_uint<PORT_WIDTH> word_type;
typedef ap_uint<RAM_ADDR_BITS> addr_type;

class bram {
public:
    word_type mem[1 << RAM_ADDR_BITS];

    void read(addr_type address, word_type& data);
    void write(addr_type address, word_type data);
};

#endif
