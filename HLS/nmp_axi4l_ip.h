#ifndef NMP_AXI4L_IP_H
#define NMP_AXI4L_IP_H

#include <ap_int.h>
#include <hls_stream.h>

#define PORT_WIDTH 32
#define RAM_ADDR_BITS 14

typedef ap_uint<PORT_WIDTH> word_type;
typedef ap_uint<RAM_ADDR_BITS> addr_type;

void nmp_axi4l_ip(
    volatile word_type* op_reg, 
    volatile word_type* addr_reg, 
    volatile word_type* status_reg, 
    volatile word_type* data_read_reg, 
    volatile word_type* data_write_reg, 
    volatile word_type* veca_addr_reg, 
    volatile word_type* vecb_addr_reg, 
    volatile word_type* vecr_addr_reg, 
    volatile word_type* vec_len_reg,
    hls::stream<int>& res_stream
);

#endif
