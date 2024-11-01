`include "flip-flopD.v"

module registrador(clk, d, pr, clr, q);

    input [7:0] d;
    input pr, clr, clk;
    output [7:0] q;

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin
            flip_flopD ff (clk, d[i], pr, clr, q[i]);
        end
    endgenerate

endmodule