`timescale 1ns/1ns
`include "adder_8bits.v"

module adder_8bits_tb;

    reg [7:0] a, b;
    wire [8:0] s;
    adder_8bits uut(a, b, s);

    initial begin
        $dumpfile("adder_8bits_tb.vcd");
        $dumpvars(0, adder_8bits_tb);

        a = 8'd255;
        b = 8'd100; #10

        $display("Teste completo");
    end

endmodule