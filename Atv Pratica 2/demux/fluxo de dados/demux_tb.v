`timescale 1ns/1ns
`include "demux.v"

module demux_tb;

    reg d;
    reg [1:0] s;
    wire [3:0] y;
    demux_gate uut(d, s, y);

    initial begin
        $dumpfile("demux_tb.vcd");
        $dumpvars(0, demux_tb);

        d = 1;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;

        $display("Teste completo");
    end

endmodule