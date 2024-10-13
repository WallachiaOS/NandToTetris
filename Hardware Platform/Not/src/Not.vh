

module Not(in_a,out);
    input in_a;
    output out;
    
    Nand nand_gate(in_a,in_a, out);
endmodule