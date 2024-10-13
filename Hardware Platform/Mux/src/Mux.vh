

module Mux(in_a, in_b, out, sel);
    input in_a,in_b, sel;
    output out;
    wire temp_a_out, temp_b_out, sel_out;

    Not not_gate2(sel, sel_out); 
    And and_gate(in_a,sel_out, temp_a_out);    
    And and_gate3(sel, in_b, temp_b_out);
    Or or_gate(temp_a_out, temp_b_out, out);
    
endmodule