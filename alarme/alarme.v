module alarme(P, W, M, S, A);

    input P, W, M, S;
    output A;

    assign A = M | (P & S) | (W & S);

endmodule