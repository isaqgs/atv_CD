`include "./adder/adder_8bits.v"
`include "./sub/sub_8bits.v"
`include "./registrador/registrador.v"
`include "decoder.v"

module ula(clk, a, b, op, s);

    input [7:0] a;
    input [7:0] b;
    wire [7:0] a_ula;
    wire [7:0] b_ula;
    wire [8:0] s_ula;
    input clk;
    input [2:0] op;
    output [7:0] s;
    //output flag;
    wire [7:0] en;

    registrador u1(clk, a, 1'b1, 1'b1, a_ula);
    registrador u2(clk, b, 1'b1, 1'b1, b_ula);

    decoder_gate decoder(op, 1'b1, en);

    adder_8bits u4(a_ula, b_ula, s_ula, en[0]);
    sub_8bits u5(a_ula, b_ula, s_ula, en[1]);

    registrador u3(clk, s_ula[7:0], 1'b1, 1'b1, s);

endmodule