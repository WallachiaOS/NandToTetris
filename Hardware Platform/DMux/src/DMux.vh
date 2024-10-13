
module DMux(in, out_a, out_b, sel);
    input in, sel;
    output out_a, out_b;
    wire sel_out;

    Not not_gate2(sel, sel_out); 
    And and_gate(in,sel_out, out_a);    
    And and_gate3(in, sel, out_b);
    
endmodule