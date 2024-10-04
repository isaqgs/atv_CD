module flip_flopD(d, pr, clr, q, clk);

    input d, pr, clr, clk;
    output reg q;

    always @(posedge clk) begin
        if (pr == 0 & clr == 1)
            q = 1;
        else if (pr == 1 & clr == 0)
            q = 0;
        else case (d)        
            0: q = 0;
            1: q = 1;
        endcase 
    end

endmodule