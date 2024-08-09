#include "bram.h"

// Implementação do método de leitura do BRAM
void bram::read(addr_type address, word_type& data) {
    data = mem[address.to_uint()];
}

// Implementação do método de escrita do BRAM
void bram::write(addr_type address, word_type data) {
    mem[address.to_uint()] = data;
}
