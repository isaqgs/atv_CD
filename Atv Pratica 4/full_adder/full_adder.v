module full_adder(a, b, cIn, s, cOut);

    input a, b, cIn;
    output s, cOut;

    assign s = a ^ b ^ cIn;
    assign cOut = (b & cIn) | (a & cIn) | (a & b);

endmodule