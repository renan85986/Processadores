#ifndef SKIDBUFFER_H
#define SKIDBUFFER_H

#include "ap_int.h"

template<int DW, int OPT_OUTREG = 0, int OPT_LOWPOWER = 0>
class skidbuffer {
public:
    ap_uint<DW> skiddata;
    bool skidvalid;
    bool skidready;

    skidbuffer() : skidvalid(false), skidready(false) {}

    void reset() {
        skidvalid = false;
        skidready = false;
    }

    void write(bool i_valid, bool o_ready, ap_uint<DW> i_data) {
        if (!skidvalid || skidready) {
            skidvalid = i_valid;
            skiddata = i_data;
        }
        skidready = o_ready;
    }

    bool read() {
        return skidvalid;
    }

    ap_uint<DW> data() {
        return skiddata;
    }

    bool ready() {
        return skidready;
    }
};

#endif // SKIDBUFFER_H
