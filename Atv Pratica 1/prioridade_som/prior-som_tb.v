`timescale 1ns/1ns
`include "prior-som.v"

module prior_som_tb;

    reg A, B;
    wire TV, PC, ALEXA;
    prior_som uut(A, B, TV, PC, ALEXA);

    initial begin
        $dumpfile("prior-som_tb.vcd");
        $dumpvars(0, prior_som_tb);

        A = 0;
        B = 0; #20;
        A = 0;
        B = 1; #20;
        A = 1; 
        B = 0; #20;
        A = 1; 
        B = 1; #20;

        $display("Teste completo");
    end

endmodule