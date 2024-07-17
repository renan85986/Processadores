#ifndef AXI4_LITE_H
#define AXI4_LITE_H

#include "assert.h"
#include <ap_int.h>


struct axi4_lite {
    ap_uint<32> addr;  // Endereço de 32 bits
    ap_uint<32> data;  // Dados de 32 bits
    bool valid;        // Sinal de validação
};

#endif
