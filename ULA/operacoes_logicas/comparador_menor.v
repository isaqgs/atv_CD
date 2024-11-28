module comparador_menor (a, b, s, en, flag);
    input [7:0] a, b;
    input en;
    output [7:0] s;
    wire [7:0] t;
    output flag;

    assign t = (a < b) ? 8'b00000001 : 8'b00000000;

    buffer u1(t, s, en, 1'b0, flag);
endmodule