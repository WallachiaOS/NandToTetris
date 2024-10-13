`include "HalfAdder/src/HalfAdder.vh"

module HalfAdderTest;
    reg in_a; 
    reg in_b;
    wire sum, carry;
    HalfAdder ha_gate(in_a,in_b,sum,carry);   

    initial begin
        $display("Testing HalfAdder Gate");
        $display("-----------------");
        $display("Inputs: in_a = 0, in_b = 0");
        in_a = 0;
        in_b = 0;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 1, in_b = 0");
        in_a = 1;
        in_b = 0;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 0, in_b = 1");
        in_a = 0;
        in_b = 1;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 1, in_b = 1");
        in_a = 1;
        in_b = 1;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
    end
endmodule