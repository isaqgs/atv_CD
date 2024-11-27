`timescale 1ns/1ns
`include "ula.v"

module ula_tb;

    reg clk;
    reg [2:0] op;
    reg [7:0] a;
    reg [7:0] b;
    wire [7:0] s;
    wire flag;
    ula uut(clk, a, b, op, s, flag);

    initial begin
        $dumpfile ("ula.vcd");
        $dumpvars (0, ula_tb);

        op = 3'b001;
        a = 8'b00000000;
        b = 8'b00000100; #100;

        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk ;
    end


endmodule