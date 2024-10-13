`include "Xor/src/Xor.vh"

module XorTest;
    reg in_a, in_b;
    wire out;
    wire out1, out2;
    Xor xor_gate(in_a, in_b, out);

    initial begin
        $display("Testing XOR Gate");
        $display("-----------------");
        $display("Inputs: in_a = 0, in_b = 0");
        in_a = 0;
        in_b = 0;
        #10 $display("Output: out = %b", out);        
        $display("Inputs: in_a = 0, in_b = 1");
        in_a = 0;
        in_b = 1;
        #10 $display("Output: out = %b", out);
        $display("Inputs: in_a = 1, in_b = 0");
        in_a = 1;
        in_b = 0;
        #10 $display("Output: out = %b", out);
        $display("Inputs: in_a = 1, in_b = 1");
        in_a = 1;
        in_b = 1;
        #10 $display("Output: out = %b", out);
            
    end
endmodule
