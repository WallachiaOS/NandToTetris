`include "Mux/src/Mux.vh"

module MuxTest;
    reg in_a, in_b;
    reg sel; 
    wire out;
    wire out1, out2;
    Mux mux_gate(in_a, in_b, out, sel);

    initial begin
        $display("Testing MUX Gate");
        $display("-----------------");
        $display("Inputs: in_a = 0, in_b = 0, sel = 0");
        in_a = 0;
        in_b = 0;
        sel = 0;
        #10 $display("Output: out = %b", out);        
        $display("Inputs: in_a = 0, in_b = 1, sel = 0");
        in_a = 0;
        in_b = 1;
        sel = 0;
        #10 $display("Output: out = %b", out);
        $display("Inputs: in_a = 1, in_b = 0, sel = 0");
        in_a = 1;
        in_b = 0;
        sel = 0;
        #10 $display("Output: out = %b", out);
        $display("Inputs: in_a = 1, in_b = 1, sel = 0");
        in_a = 1;
        in_b = 1;
        sel = 0;
        #10 $display("Output: out = %b", out);
        $display("Inputs: in_a = 0, in_b = 0, sel = 1");
        in_a = 0;
        in_b = 0;
        sel = 1;
        #10 $display("Output: out = %b", out);        
        $display("Inputs: in_a = 0, in_b = 1, sel = 1");
        in_a = 0;
        in_b = 1;
        sel = 1;
        #10 $display("Output: out = %b", out);
        $display("Inputs: in_a = 1, in_b = 0, sel = 1");
        in_a = 1;
        in_b = 0;
        sel = 1;
        #10 $display("Output: out = %b", out);
        $display("Inputs: in_a = 1, in_b = 1, sel = 1");
        in_a = 1;
        in_b = 1;
        sel = 1;
        #10 $display("Output: out = %b", out);
    end
endmodule
