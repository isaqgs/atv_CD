`timescale 1ns/1ns
`include "decoder.v"

module decoder_tb;

    reg [2:0] a;
    reg e;
    wire [7:0] d;
    decoder_gate uut(a, e, d);

    initial begin
        $dumpfile("decoder_tb.vcd");
        $dumpvars(0, decoder_tb);

        e = 1;
        a = 3'b000; #10;
        a = 3'b001; #10;
        a = 3'b010; #10;
        a = 3'b011; #10;
        a = 3'b100; #10;
        a = 3'b101; #10;
        a = 3'b110; #10;
        a = 3'b111; #10;
        e = 0; #10;

        $display("Teste completo");
    end

endmodule