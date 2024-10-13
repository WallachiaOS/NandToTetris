
module FullAdder(a, b, c, sum, carry);
    input a, b, c;
    output sum, carry;
    wire tmp_sum_out, tmp_carry_out_1, tmp_carry_out_2;
 
    HalfAdder ha_gate1(a,           b,  tmp_sum_out,    tmp_carry_out_1);
    HalfAdder ha_gate2(tmp_sum_out, c,  sum,            tmp_carry_out_2);
    Or or_gate(tmp_carry_out_1,tmp_carry_out_2, carry);
endmodule

