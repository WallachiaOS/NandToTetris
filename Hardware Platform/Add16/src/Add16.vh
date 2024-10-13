module Add16(a, b, sum);
    input [15:0] a, b;
    output [15:0] sum;
    wire c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15;
 
    HalfAdder ha_gate1(a[0], b[0],  sum[0],        c0);
    FullAdder fa_gate2(a[1], b[1],  c0, sum[1],    c1);
    FullAdder fa_gate3(a[2], b[2],  c1, sum[2], c2);
    FullAdder fa_gate4(a[3], b[3],  c2, sum[3], c3);
    FullAdder fa_gate5(a[4], b[4],  c3, sum[4], c4);
    FullAdder fa_gate6(a[5], b[5],  c4, sum[5], c5);
    FullAdder fa_gate7(a[6], b[6],  c5, sum[6], c6);
    FullAdder fa_gate8(a[7], b[7],  c6, sum[7], c7);
    FullAdder fa_gate9(a[8], b[8],  c7, sum[8], c8);
    FullAdder fa_gate10(a[9], b[9],  c8, sum[9], c9);
    FullAdder fa_gate11(a[10], b[10],  c9, sum[10], c10);
    FullAdder fa_gate12(a[11], b[11],  c10, sum[11], c11);
    FullAdder fa_gate13(a[12], b[12],  c11, sum[12], c12);
    FullAdder fa_gate14(a[13], b[13],  c12, sum[13], c13);
    FullAdder fa_gate15(a[14], b[14],  c13, sum[14], c14);
    FullAdder fa_gate16(a[15], b[15],  c14, sum[15], c15);

endmodule

