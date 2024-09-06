module semaforo(A, VERD_A, VERM_A, VERD_B, VERM_B);

    input A;
    output VERD_A, VERM_A, VERD_B, VERM_B;

    assign VERD_A = A;
    assign VERM_A = ~A;
    assign VERD_B = ~A;
    assign VERM_B = A;

endmodule