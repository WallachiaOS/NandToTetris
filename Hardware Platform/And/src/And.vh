
module And(in_a,in_b,out);
    input in_a,in_b;
    output out;
    wire temp_out;

    Nand nand_gate(in_a,in_b,temp_out);
    Not not_gate(temp_out,out);

endmodule