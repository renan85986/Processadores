#include "axi4_lite.h"
#include <hls_stream.h>
#include <iostream>

void nmp_axi4l_ip(hls::stream<axi4_lite>& write_channel, hls::stream<axi4_lite>& read_channel);

int main() {
    hls::stream<axi4_lite> write_channel;
    hls::stream<axi4_lite> read_channel;

    // Simula uma escrita
    axi4_lite write_req;
    write_req.addr = 0x04;
    write_req.data = 0xDEADBEEF;
    write_req.valid = true;
    write_channel.write(write_req);

    // Chama a função IP para processar a escrita
    nmp_axi4l_ip(write_channel, read_channel);

    // Simula uma leitura
    axi4_lite read_req;
    read_req.addr = 0x04;
    read_req.valid = true;
    read_channel.write(read_req);

    // Chama a função IP para processar a leitura
    nmp_axi4l_ip(write_channel, read_channel);

    // Lê a resposta da leitura
    axi4_lite read_resp;
    if (!read_channel.empty()) {
        read_resp = read_channel.read();
        if (read_resp.valid) {
            std::cout << "Read Data: " << std::hex << read_resp.data << std::endl;
        }
    }

    return 0;
}
