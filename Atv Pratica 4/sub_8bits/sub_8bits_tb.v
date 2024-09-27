`timescale 1ns/1ns
`include "sub_8bits.v"

module sub_8bits_tb;

    reg [7:0] a, b;
    wire [8:0] s;
    sub_8bits uut(a, b, s);

    initial begin
        $dumpfile("sub_8bits_tb.vcd");
        $dumpvars(0, sub_8bits_tb);

        a = 8'd20;
        b = 8'd10; #10

        $display("Teste completo");
    end

endmodule