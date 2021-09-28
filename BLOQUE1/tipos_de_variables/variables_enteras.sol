pragma solidity >=0.4.4 <0.7.0;

contract enteros{
    // variable enteras sin signo
    uint mi_primer_entero;
    uint mi_primer_entero_inicializado = 3;
    uint cota = 5000;
    
    // variables enteras sin signo con un umero especifico de bits
    uint8 entero_8_bits;
    uint64 entero_64_bits = 7000; // <2^64
    uint16 entero_16_bits;
    uint256 entero_256_bits; // es similar uint
    
    // variables enteras con signo
    int mi_primer_entero_con_signo;
    int mi_primer_entero_con_signo_init = -32;
    int mi_primer_entero_con_signo_init_posit = 32;
    
    // variables enteras con signo con un numero especifico de bits
    int72 entero_con_sig_32_bits;
    int240 entero_con_sig_240_bits = 9000;
    int256 entero_con_sig_256_bits;
}
