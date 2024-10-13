

module Or(in_a, in_b, out);
    input in_a,in_b;
    output out;
    wire temp1_out, temp2_out, branch1_out, branch2_out, temp3_out;

    // 1st NAND gate made from AND and NOT
    And and_gate(in_a,in_a, temp1_out);    
    Not not_gate(temp1_out, branch1_out);
    
    // 2st NAND gate made from AND and NOT
    And and_gate2(in_b,in_b, temp2_out);    
    Not not_gate2(temp2_out, branch2_out);

    // 3rd NNAD gate made from AND and NOT
    And and_gate3(branch1_out,branch2_out, temp3_out);    
    Not not_gate3(temp3_out, out);  

endmodule