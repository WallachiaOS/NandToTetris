`include "Include/common_defs.vh"

module Mux16Test;
    reg [15:0] in_a;
    reg [15:0] in_b;
    reg sel; 
    wire signed [15:0] out;
    
    Mux16 mux16_gate(in_a, in_b, out, sel);

    initial begin
        $display("Testing MUX16 Gate");
        $display("-----------------");
        $display("Inputs: in_a = 3567, in_b = 1095, sel = 0");
        in_a = 3567;
        in_b = 1095;
        sel = 0;
        #10 $display("Output: out = %d", out);        
        $display("Inputs: in_a = 3567, in_b = 1095, sel = 1");
        in_a = 3567;
        in_b = 1095;
        sel = 1;
        #10 $display("Output: out = %d", out);
        $display("Inputs: in_a = -29201, in_b = 1095, sel = 0");
        in_a = -29201;
        in_b = 1095;
        sel = 0;
        #10 $display("Output: out = %d", out);     
        $display("Inputs: in_a = -29201, in_b = 1095, sel = 1");
        in_a = -29201;
        in_b = 1095;
        sel = 1;
        #10 $display("Output: out = %d", out);    
    end
endmodule
