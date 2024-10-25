`timescale 1ns/1ns
`include "contador.v"

module contador_tb;

    reg pr, clr, clk;
    wire [3:0] q;
    contador uut(pr, clr, clk, q);

    initial begin
        $dumpfile ("contador.vcd");
        $dumpvars (1);

        pr = 1; clr = 0; #20;
        pr = 1; clr = 1; #340;

        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk ;
    end


endmodule