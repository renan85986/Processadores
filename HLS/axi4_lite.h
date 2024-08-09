#include "ap_int.h"

#define ADDR_WIDTH 8
#define DATA_WIDTH 32

typedef ap_uint<ADDR_WIDTH> addr_t;
typedef ap_uint<DATA_WIDTH> data_t;

struct axi4_lite {
    addr_t address;
    data_t data;
    bool valid;
    bool ready;
};
