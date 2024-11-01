module buffer (a, b, en);
    input [8:0] a;
    input en;
    output reg [8:0] b;

    always @(*) begin
        if (en)
            b = a;
        else 
            b = 9'bzzzzzzzzz;
    end
endmodule