`timescale 1ns/1ns
`include "full_sub.v"

module full_sub_tb;

    reg a, b, cIn;
    wire s, cOut;
    full_sub uut(a, b, cIn, s, cOut);

    initial begin
        $dumpfile("full_sub_tb.vcd");
        $dumpvars(0, full_sub_tb);

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