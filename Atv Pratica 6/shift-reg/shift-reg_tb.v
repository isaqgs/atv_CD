`timescale 1ns/1ns
`include "shift-reg.v"

module shif_reg_tb;

    reg d;
    reg pr, clr, clk;
    wire [3:0] q;
    shift_reg uut(clk, d, pr, clr, q);

    initial begin
        $dumpfile ("shift-reg.vcd");
        $dumpvars (1);

        pr = 1; clr = 0; #20;
        pr = 1; clr = 1; d = 1; #100;

        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk ;
    end


endmodule