`timescale 1ns/1ns
`include "half_sub.v"

module half_sub_tb;

    reg a, b;
    wire s, c;
    half_sub uut(a, b, s, c);

    initial begin
        $dumpfile("half_sub_tb.vcd");
        $dumpvars(0, half_sub_tb);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $display("Teste completo");
    end

endmodule