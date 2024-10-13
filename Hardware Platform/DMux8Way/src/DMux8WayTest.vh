`include "DMux8Way/src/DMux8Way.vh"

module DMux48ay16Test;
    reg in;
    reg [2:0] sel;
    wire a, b,c,d,e,f,g,h;
    
    DMux8Way dmux_gate(in, sel, a, b, c, d,e,f,g,h);

    initial begin
        $display("Testing DMux8Way Gate");
        $display("-----------------");
        $display("Inputs: in = 1, sel = 000");
        in = 1;
        sel = 3'b000;
        #10 $display("Output: a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, g = %d, h = %d" , a, b, c, d,e,f,g,h);        
        $display("Inputs: in = 1, sel = 001");
        in = 1;
        sel = 3'b001;
        #10 $display("Output: a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, g = %d, h = %d"  , a, b, c, d,e,f,g,h);  
        $display("Inputs: in = 1, sel = 010");
        in = 1;
        sel = 3'b010;
        #10 $display("Output: a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, g = %d, h = %d"  , a, b, c, d,e,f,g,h); 
        $display("Inputs: in = 1, sel = 011");
        in = 1;
        sel = 3'b011;
        #10 $display("Output: a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, g = %d, h = %d"  , a, b, c, d,e,f,g,h);    
        $display("Inputs: in = 1, sel = 100");
        in = 1;
        sel = 3'b100;
        #10 $display("Output: a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, g = %d, h = %d"  , a, b, c, d,e,f,g,h);  
        $display("Inputs: in = 1, sel = 101");
        in = 1;
        sel = 3'b101;
        #10 $display("Output: a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, g = %d, h = %d"  , a, b, c, d,e,f,g,h); 
        $display("Inputs: in = 1, sel = 110");
        in = 1;
        sel = 3'b110;
        #10 $display("Output: a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, g = %d, h = %d"  , a, b, c, d,e,f,g,h); 
        $display("Inputs: in = 1, sel = 111");
        in = 1;
        sel = 3'b111;
        #10 $display("Output: a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, g = %d, h = %d"  , a, b, c, d,e,f,g,h); 
    end
endmodule
