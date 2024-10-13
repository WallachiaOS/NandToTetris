

module Or8Way( input [7:0] in_a, output out);

    wire tmp1, tmp2, tmp3, tmp4, tmp5;
    wire res_1, res_2;

    Or or_gate0(in_a[0], in_a[1], tmp1);
    Or or_gate1(in_a[2], in_a[3], tmp2);
    Or or_gate2(in_a[4], in_a[5], tmp3);
    Or or_gate3(in_a[6], in_a[7], tmp4);
    Or or_gate4(tmp1, tmp2, res_1);
    Or or_gate5(tmp3, tmp4, res_2);  
    Or or_gate6(res_1, res_2, out);

endmodule