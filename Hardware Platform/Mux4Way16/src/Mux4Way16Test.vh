`include "Mux4Way16/src/Mux4Way16.vh"

module Mux16Test;
    reg [15:0] in_a;
    reg [15:0] in_b;
    reg [15:0] in_c;
    reg [15:0] in_d;   
    reg [1:0] sel; 
    wire signed [15:0] out;
    
    Mux4Way16 mux4way16_gate(in_a, in_b, in_c, in_d, out, sel);

    initial begin
        $display("Testing Mux4Way16 Gate");
        $display("-----------------");
        $display("Inputs: in_a = 3567, in_b = 1095, in_c = 25, in_d = 1420, sel = 00");
        in_a = 3567;
        in_b = 1095;
        in_c = 25;
        in_d = 1420;
        sel = 2'b00;
        #10 $display("Output: out = %d", out);        
        $display("Inputs: in_a = 3567, in_b = 1095, in_c = 25, in_d = 1420, sel = 01");
        sel = 2'b01;
        #10 $display("Output: out = %d", out);
        $display("Inputs: in_a = 3567, in_b = 1095, in_c = 25, in_d = 1420, sel = 10");
        sel = 2'b10;
        #10 $display("Output: out = %d", out);     
        $display("Inputs: in_a = 3567, in_b = 1095, in_c = 25, in_d = 1420, sel = 11");
        sel = 2'b11;
        #10 $display("Output: out = %d", out);    
    end
endmodule
