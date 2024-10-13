

module Mux4Way16(
        input [15:0] in_a, in_b, in_c, in_d,
        output [15:0] out, 
        input [1:0] sel);

    wire [15:0] group_1, group_2, group_sel;
    
    // sel[x,0] -> group 1 selects a or c
    // sel[x,1] -> group 2 selects b or d
    // first create group 1 from a or c using sel[1] 
    Mux16 mux16_gate1(in_a, in_c, group_1, sel[1]);
    // second select group 2 from b or d using sel[1]
    Mux16 mux16_gate2(in_b, in_d, group_2, sel[1]);
    // select which group ouputs using sel[0]
    Mux16 mux16_gate3(group_1, group_2, out, sel[0]);
    
endmodule