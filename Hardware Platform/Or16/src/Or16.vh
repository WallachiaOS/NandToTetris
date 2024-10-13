

module Or16(input [15:0] in_a, input [15:0] in_b, output [15:0] out);
    wire signed [15:0] temp1_out;
    wire signed [15:0] temp2_out;
    wire signed [15:0] branch1_out;
    wire signed [15:0] branch2_out;
    wire signed [15:0] temp3_out;

    // 1st NAND gate made from AND and NOT
    And16 and16_gate(in_a,in_a, temp1_out);    
    Not16 not16_gate(temp1_out, branch1_out);
    
    // 2st NAND gate made from AND and NOT
    And16 and16_gate2(in_b,in_b, temp2_out);    
    Not16 not16_gate2(temp2_out, branch2_out);

    // 3rd NNAD gate made from AND and NOT
    And16 and16_gate3(branch1_out,branch2_out, temp3_out);    
    Not16 not16_gate3(temp3_out, out);  

endmodule