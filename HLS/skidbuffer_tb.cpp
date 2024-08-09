#include "ap_int.h"
#include "hls_stream.h"
#include <iostream>

#define DATA_WIDTH 32

void skidbuffer(hls::stream<ap_uint<DATA_WIDTH>>& s_axis,
                hls::stream<ap_uint<DATA_WIDTH>>& m_axis);

int main() {
    hls::stream<ap_uint<DATA_WIDTH>> s_axis, m_axis;

    // Envia dados para o buffer
    for (int i = 0; i < 10; ++i) {
        ap_uint<DATA_WIDTH> data = i;
        s_axis.write(data);
    }

    // Chama a função skidbuffer
    skidbuffer(s_axis, m_axis);

    // Verifica a saída
    while (!m_axis.empty()) {
        ap_uint<DATA_WIDTH> received = m_axis.read();
        std::cout << "Received: " << received << std::endl;
    }

    return 0;
}
