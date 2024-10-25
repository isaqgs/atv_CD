module contador(pr, clr, clk, q);

    input pr, clr, clk;
    output reg [3:0] q;

    always @(posedge clk) begin
        if (pr == 0 & clr == 1)
            q = 1;
        else if (pr == 1 & clr == 0)
            q = 0;
        else if (pr == 1 & clr == 1)
            q <= q + 1'b1;
    end

endmodule