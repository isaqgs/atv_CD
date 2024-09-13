module mux_gate(d, s, y);

    input [3:0] d;
    input [1:0] s;
    output y;
    wire ns0, ns1, d0, d1, d2, d3;

    not n0 (ns0, s[0]);
    not n1 (ns1, s[1]);

    and i0 (d0, d[0], ns0, ns1);
    and i1 (d1, d[1], ns1, s[0]);
    and i2 (d2, d[2], s[1], ns0);
    and i3 (d3, d[3], s[0], s[1]);

    or (y, d0, d1, d2, d3);

endmodule