`include "./adder/adder_8bits.v"
`include "./sub/sub_8bits.v"
`include "./registrador/registrador.v"
`include "./operacoes_logicas/comparador_maior.v"
`include "./operacoes_logicas/comparador_menor.v"
`include "./operacoes_logicas/bit_bit_and.v"
`include "./operacoes_logicas/bit_bit_or.v"
`include "./operacoes_logicas/bit_bit_xor.v"
`include "./operacoes_logicas/bit_bit_nxor.v"
`include "decoder.v"
`include "buffer.v"

module ula(clk, a, b, op, pr, clr, s, flag);

    input clk, pr, clr;
    input [7:0] a, b;
    input [2:0] op;
    wire [7:0] a_ula, b_ula, s_ula, en;
    output [7:0] s;
    output flag;

    registrador u1(clk, a, pr, clr, a_ula);
    registrador u2(clk, b, pr, clr, b_ula);

    decoder_gate decoder(op, 1'b1, en);

    adder_8bits u4(a_ula, b_ula, s_ula, en[0], flag);
    sub_8bits u5(a_ula, b_ula, s_ula, en[1], flag);
    comparador_menor u6(a_ula, b_ula, s_ula, en[2], flag);
    comparador_maior u7(a_ula, b_ula, s_ula, en[3], flag);
    bit_bit_and u8(a_ula, b_ula, s_ula, en[4], flag);
    bit_bit_or u9(a_ula, b_ula, s_ula, en[5], flag);
    bit_bit_xor u10(a_ula, b_ula, s_ula, en[6], flag);
    bit_bit_nxor u11(a_ula, b_ula, s_ula, en[7], flag);

    registrador u3(clk, s_ula[7:0], pr, clr, s);

endmodule