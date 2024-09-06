module prior_som(A, B, TV, PC, ALEXA);

    input A, B;
    output TV, PC, ALEXA;

    assign TV = A;
    assign PC = ~A & B;
    assign ALEXA = ~A & ~B;

endmodule