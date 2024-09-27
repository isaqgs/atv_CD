`timescale 1ns/1ns
`include "half_adder.v"

module half_adder_tb;

    reg a, b;
    wire s, c;
    half_adder uut(a, b, s, c);

    initial begin
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0, half_adder_tb);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $display("Teste completo");
    end

endmodule