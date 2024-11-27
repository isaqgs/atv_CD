module buffer (a, b, en, carry, flag);
    input [7:0] a;
    input en;
    input carry;
    output reg [7:0] b;
    output reg flag;

    always @(*) begin
        if (en) begin
            b = a;
            flag = carry;
        end else begin
            b = 8'bzzzzzzzz;
            flag = 1'bz;
        end
    end
endmodule