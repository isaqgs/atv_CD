`timescale 1ns/1ns
`include "flip-flopJK.v"

module flip_flopJK_tb;

    reg j, k, pr, clr, clk;
    wire q;
    flip_flopJK uut(j, k, pr, clr, q, clk);

    initial begin
        $dumpfile ("flip_flopJK.vcd");
        $dumpvars (1);

        pr = 1; clr = 0; #20;
        pr = 1; clr = 1; j = 0; k = 0; #20;
        j = 0; k = 1; #20;
        j = 1; k = 0; #20;
        j = 1; k = 1; #20;

        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk ;
    end


endmodule