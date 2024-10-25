`include "flip_flopJK.v"

module contador(pr, clr, clk, q);

    input pr, clr, clk;
    output [3:0] q;

    flip_flopJK u1(1'b1, 1'b1, pr, clr, q[0], clk);
    flip_flopJK u2(1'b1, 1'b1, pr, clr, q[1], q[0]);
    flip_flopJK u3(1'b1, 1'b1, pr, clr, q[2], q[1]);
    flip_flopJK u4(1'b1, 1'b1, pr, clr, q[3], q[2]);

endmodule