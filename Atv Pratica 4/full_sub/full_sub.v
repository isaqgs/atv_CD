module full_sub(a, b, cIn, s, cOut);

    input a, b, cIn;
    output s, cOut;

    assign s = a ^ b ^ cIn;
    assign cOut = (~a & b) | (~a & cIn) | (b & cIn);

endmodule