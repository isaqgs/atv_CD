`include "full_adder.v"
`include "half_adder.v"

module adder_8bits(a, b, t, en, flag);

    input [7:0] a, b;
    input en;
    wire [7:0] s;
    output flag;
    output [7:0] t;
    wire [7:0] c;

    half_adder u1(a[0], b[0], s[0], c[0]);
    full_adder u2(a[1], b[1], c[0], s[1], c[1]);
    full_adder u3(a[2], b[2], c[1], s[2], c[2]);
    full_adder u4(a[3], b[3], c[2], s[3], c[3]);
    full_adder u5(a[4], b[4], c[3], s[4], c[4]);
    full_adder u6(a[5], b[5], c[4], s[5], c[5]);
    full_adder u7(a[6], b[6], c[5], s[6], c[6]);
    full_adder u8(a[7], b[7], c[6], s[7], c[7]);
    buffer u9(s, t, en, c[7], flag);

endmodule