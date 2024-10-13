`include "DMux4Way/src/DMux4Way.vh"

module Mux4Way16Test;
    reg in;
    reg [1:0] sel;
    wire a, b,c,d;
    
    DMux4Way dmux_gate(in, sel, a, b, c, d);

    initial begin
        $display("Testing DMux4Way Gate");
        $display("-----------------");
        $display("Inputs: in = 1, sel = 00");
        in = 1;
        sel = 2'b00;
        #10 $display("Output: a = %d, b = %d, b = %d, d = %d" , a, b, c, d);        
        $display("Inputs: in = 1, sel = 01");
        in = 1;
        sel = 2'b01;
        #10 $display("Output: a = %d, b = %d, b = %d, d = %d" , a, b, c, d);  
        $display("Inputs: in = 1, sel = 10");
        in = 1;
        sel = 2'b10;
        #10 $display("Output: a = %d, b = %d, b = %d, d = %d" , a, b, c, d); 
        $display("Inputs: in = 1, sel = 11");
        in = 1;
        sel = 2'b11;
        #10 $display("Output: a = %d, b = %d, b = %d, d = %d" , a, b, c, d);     
    end
endmodule
