`timescale 1ns/1ns
`include "ula.v"

module ula_tb;

    reg clk, pr, clr;
    reg [2:0] op;
    reg [7:0] a, b;
    wire [7:0] s;
    wire flag;
    ula uut(clk, a, b, op, pr, clr, s, flag);

    initial begin
        $dumpfile ("ula.vcd");
        $dumpvars (0, ula_tb);

        pr = 0; clr = 0; 
        a = 8'b00101011;
        b = 8'b01110001; 
        op = 3'b000; #50;
        op = 3'b001; #50;
        op = 3'b010; #50;
        op = 3'b011; #50;
        op = 3'b100; #50;
        op = 3'b101; #50;
        op = 3'b110; #50;
        op = 3'b111; #50;

        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk ;
    end


endmodule