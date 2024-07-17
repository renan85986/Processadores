#include "axi4_lite.h"
#include <hls_stream.h>

void nmp_axi4l_ip(hls::stream<axi4_lite>& write_channel, hls::stream<axi4_lite>& read_channel) {
    #pragma HLS INTERFACE axis port=write_channel
    #pragma HLS INTERFACE axis port=read_channel
    #pragma HLS INTERFACE s_axilite port=return

    static ap_uint<32> reg_data = 0;

    // Processo de escrita
    if (!write_channel.empty()) {
        axi4_lite write_req = write_channel.read();
        if (write_req.valid) {
            reg_data = write_req.data;  // Escreve os dados no registro interno
        }
    }

    // Processo de leitura
    if (!read_channel.empty()) {
        axi4_lite read_req = read_channel.read();
        if (read_req.valid) {
            axi4_lite read_resp;
            read_resp.data = reg_data;  // Lê os dados do registro interno
            read_resp.valid = true;
            read_channel.write(read_resp);  // Envia os dados lidos para o canal de leitura
        }
    }
}
