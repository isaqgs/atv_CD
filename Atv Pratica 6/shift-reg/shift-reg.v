`include "flip-flopD.v"

module shift_reg(clk, d, pr, clr, q);
    
    input d;
    input pr, clr, clk;
    output [3:0] q;

    flip_flopD u1(clk, d, pr, clr, q[0]);
    flip_flopD u2(clk, q[0], pr, clr, q[1]);
    flip_flopD u3(clk, q[1], pr, clr, q[2]);
    flip_flopD u4(clk, q[2], pr, clr, q[3]);

endmodule