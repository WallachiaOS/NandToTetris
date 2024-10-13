`include "DMux/src/DMux.vh"

module DMuxTest;
    reg in;
    reg sel; 
    wire out1, out2;
    DMux mux_gate(in, out1, out2, sel);

    initial begin
        $display("Testing MUX Gate");
        $display("-----------------");
        $display("Inputs: in = 0, sel = 0");
        in = 0;
        sel = 0;
        #10 $display("Output: out_1 = %b", out1);      
        #10 $display("Output: out_2 = %b", out2);   
        $display("Inputs: in = 0, sel = 1");
        in = 0;
        sel = 1;
        #10 $display("Output: out_1 = %b", out1);      
        #10 $display("Output: out_2 = %b", out2); 
        $display("Inputs: in = 1, sel = 0");
        in = 1;
        sel = 0;
        #10 $display("Output: out_1 = %b", out1);      
        #10 $display("Output: out_2 = %b", out2);
        $display("Inputs: in = 1, sel = 1");
        in = 1;
        sel = 1;
        #10 $display("Output: out_1 = %b", out1);      
        #10 $display("Output: out_2 = %b", out2);
        
    end
endmodule
