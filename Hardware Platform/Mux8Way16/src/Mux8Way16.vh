

module Mux8Way16(
        input [15:0] in_a, in_b, in_c, in_d, in_e, in_f, in_g, in_h, 
        output [15:0] out, 
        input [2:0] sel);

    wire [15:0] group_1, group_2, group_sel;
    
    Mux4Way16 mux4way16_gate1(in_a, in_b, in_c, in_d, group_1, sel[1:0]);
    Mux4Way16 mux4way16_gate2(in_e, in_f, in_g, in_h, group_2, sel[1:0]);
    Mux16 mux_gate(group_1, group_2, out, sel[2]);
    
endmodule