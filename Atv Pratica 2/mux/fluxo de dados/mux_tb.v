`timescale 1ns/1ns
`include "mux.v"

module mux_tb;

    reg [3:0] d;
    reg [1:0] s;
    wire y;
    mux_gate uut(d, s, y);

    initial begin
        $dumpfile("mux_tb.vcd");
        $dumpvars(0, mux_tb);

        d = 4'b1100;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;

        $display("Teste completo");
    end

endmodule