`timescale 1ns/1ns
`include "registrador.v"

module registrador_tb;

    reg [7:0] d;
    reg pr, clr, clk;
    wire [7:0] q;
    registrador uut(clk, d, pr, clr, q);

    initial begin
        $dumpfile ("registrador.vcd");
        $dumpvars (1);

        pr = 1; clr = 0; #20;
        pr = 1; clr = 1; d = 8'b11111111; #20;

        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk ;
    end


endmodule