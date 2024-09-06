`timescale 1ns/1ns
`include "semaforo.v"

module semaforo_tb;

    reg A;
    wire VERD_A, VERM_A, VERD_B, VERM_B;
    semaforo uut(A, VERD_A, VERM_A, VERD_B, VERM_B);

    initial begin
        $dumpfile("semaforo_tb.vcd");
        $dumpvars(0, semaforo_tb);

        A = 0; #20;
        A = 1; #20;

        $display("Teste completo");
    end

endmodule