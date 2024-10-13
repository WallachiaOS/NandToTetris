`include "Or8Way/src/Or8Way.vh"

module Or8WayTest;
    reg  [7:0] in_a;
    wire out; 
    
    Or8Way or8_gate(in_a,out);

    initial begin       
        $display("Inputs: in_a = 1");
        in_a = 1;
        #20 $display("Output: out = %b", out);
        $display("Inputs: in_a = 0");
        in_a = 0;
        #20 $display("Output: out = %b", out);
        $display("Inputs: in_a = 25");
        in_a = 25;
        #20 $display("Output: out = %b", out);
        $display("Inputs: in_a = 32");
        in_a = 32;
        #20 $display("Output: out = %b", out);
        $display("Inputs: in_a = 4180");
        in_a = 4180;
        #20 $display("Output: out = %b", out);
        $display("Inputs: in_a = 0");
        in_a = 0;
        #20 $display("Output: out = %b", out);
        $display("Inputs: in_a = 4181");
        in_a = 4181;
        #20 $display("Output: out = %b", out);
    end
endmodule