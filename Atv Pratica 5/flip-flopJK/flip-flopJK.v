module flip_flopJK(j, k, pr, clr, q, clk);

    input j, k, pr, clr, clk;
    output reg q;

    always @(negedge clk) begin
        if (pr == 0 & clr == 1)
            q = 1;
        else if (pr == 1 & clr == 0)
            q = 0;
        else case ({j,k})        
            2'b01: q = 0;
            2'b10: q = 1;
            2'b11: q = ~q;
        endcase 
    end

endmodule