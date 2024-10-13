`include "Mux8Way16/src/Mux8Way16.vh"

module Mux8Way16Test;
    reg [15:0] in_a;
    reg [15:0] in_b;
    reg [15:0] in_c;
    reg [15:0] in_d;
    reg [15:0] in_e;
    reg [15:0] in_f;
    reg [15:0] in_g;
    reg [15:0] in_h;     
    reg [2:0] sel; 
    wire signed [15:0] out;
    
    Mux8Way16 mux8way16_gate(in_a, in_b, in_c, in_d, in_e, in_f, in_g, in_h, out, sel);

    initial begin
        $display("Testing Mux4Way16 Gate");
        $display("-----------------");
        $display("Inputs: in_a = 246, in_b = 2, in_c = 3, in_d = 4, in_e = 5, in_f = 6, in_g = 7, in_h = 8, sel = 000");
        in_a = 246;
        in_b = 2;
        in_c = 3;
        in_d = 4;
        in_e = 5;
        in_f = 6;
        in_g = 7;
        in_h = 8;
        sel = 3'b000;
        #10 $display("Output: out = %d", out);        
        $display("Inputs: in_a = 1, in_b = 2, in_c = 3, in_d = 4, in_e = 5, in_f = 6, in_g = 7, in_h = 8, sel = 000");
        in_a = 1;
        sel = 3'b000;
        #10 $display("Output: out = %d", out);
        $display("Inputs: in_a = 1, in_b = 2, in_c = 3, in_d = 4, in_e = 5, in_f = 6, in_g = 7, in_h = 8, sel = 001");
        sel = 3'b001;
        #10 $display("Output: out = %d", out);     
        $display("Inputs: in_a = 1, in_b = 2, in_c = 3, in_d = 4, in_e = 5, in_f = 6, in_g = 7, in_h = 8, sel = 010");
        sel = 3'b010;
        #10 $display("Output: out = %d", out);    
        $display("Inputs: in_a = 1, in_b = 2, in_c = 3, in_d = 4, in_e = 5, in_f = 6, in_g = 7, in_h = 8, sel = 011");
        sel = 3'b011;
        #10 $display("Output: out = %d", out);
        $display("Inputs: in_a = 1, in_b = 2, in_c = 3, in_d = 4, in_e = 5, in_f = 6, in_g = 7, in_h = 8, sel = 100");
        sel = 3'b100;
        #10 $display("Output: out = %d", out);     
        $display("Inputs: in_a = 1, in_b = 2, in_c = 3, in_d = 4, in_e = 5, in_f = 6, in_g = 7, in_h = 8, sel = 101");
        sel = 3'b101;
        #10 $display("Output: out = %d", out); 
        $display("Inputs: in_a = 1, in_b = 2, in_c = 3, in_d = 4, in_e = 5, in_f = 6, in_g = 7, in_h = 8, sel = 110");
        sel = 3'b110;
        #10 $display("Output: out = %d", out);
        $display("Inputs: in_a = 1, in_b = 2, in_c = 3, in_d = 4, in_e = 5, in_f = 6, in_g = 7, in_h = 8, sel = 111");
        sel = 3'b111;
        #10 $display("Output: out = %d", out);     
    end
endmodule
