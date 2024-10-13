
module Xor(in_a, in_b, out);
    input in_a,in_b;
    output out;
    wire temp_a_out, temp_a_and_out;
    wire temp_b_out, temp_b_and_out;

    // 1st NAND gate made from AND and NOT
    Not not_gate(in_b, temp_a_out);  
    And and_gate(in_a,temp_a_out, temp_a_and_out); 
        
    // 2st NAND gate made from AND and NOT
    Not not_gate2(in_a, temp_b_out);    
    And and_gate2(in_b, temp_b_out, temp_b_and_out);

    // OR gate made from AND and NOT
    Or or_gate(temp_a_and_out, temp_b_and_out, out);
    
endmodule