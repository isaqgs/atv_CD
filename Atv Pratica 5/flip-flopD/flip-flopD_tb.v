`timescale 1ns/1ns
`include "flip-flopD.v"

module flip_flopD_tb;

    reg d, pr, clr, clk;
    wire q;
    flip_flopD uut(d, pr, clr, q, clk);

    initial begin
        $dumpfile ("flip_flopD.vcd");
        $dumpvars (1);

        pr = 1; clr = 0; #20;
        pr = 1; clr = 1; d = 0; #20;
        d = 1; #20;

        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk ;
    end


endmodule