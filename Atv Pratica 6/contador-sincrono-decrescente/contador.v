module contador(pr, clr, clk, q);

    input pr, clr, clk;
    output reg [6:0] q;

    always @(negedge clk) begin
        if (pr == 0 & clr == 1)
            q = 6'd10;
        else if (pr == 1 & clr == 0)
            q = 6'd35;
        else if (pr == 1 & clr == 1)
            q = q - 1'b1;
        if (q < 6'd10)
            q = 6'd35;
    end

endmodule
