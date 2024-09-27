`timescale 1ns/1ns
`include "full_adder.v"

module full_adder_tb;

    reg a, b, cIn;
    wire s, cOut;
    full_adder uut(a, b, cIn, s, cOut);

    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);

        a = 0; b = 0; cIn = 0; #10;
        a = 0; b = 0; cIn = 1; #10;
        a = 0; b = 1; cIn = 0; #10;
        a = 0; b = 1; cIn = 1; #10;
        a = 1; b = 0; cIn = 0; #10;
        a = 1; b = 0; cIn = 1; #10;
        a = 1; b = 1; cIn = 0; #10;
        a = 1; b = 1; cIn = 1; #10;

        $display("Teste completo");
    end

endmodule