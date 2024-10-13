`include "FullAdder/src/FullAdder.vh"

module FullAdderTest;
    reg in_a; 
    reg in_b;
    reg in_c;
    wire sum, carry;
    FullAdder fa_gate(in_a,in_b,in_c, sum,carry);   

    initial begin
        $display("Testing FullAdder Gate");
        $display("-----------------");
        $display("Inputs: in_a = 0, in_b = 0, in_c = 0");
        in_a = 0;
        in_b = 0;
        in_c = 0;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 1, in_b = 0, in_c = 0" );
        in_a = 1;
        in_b = 0;
        in_c = 0;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 0, in_b = 1, in_c = 0");
        in_a = 0;
        in_b = 1;
        in_c = 0;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 1, in_b = 1, in_c = 0");
        in_a = 1;
        in_b = 1;
        in_c = 0;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 0, in_b = 0, in_c = 1");
        in_a = 0;
        in_b = 0;
        in_c = 1;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 1, in_b = 0, in_c = 1");
        in_a = 1;
        in_b = 0;
        in_c = 1;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 0, in_b = 1, in_c = 1");
        in_a = 0;
        in_b = 1;
        in_c = 1;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
        $display("Inputs: in_a = 1, in_b = 1, in_c = 1");
        in_a = 1;
        in_b = 1;
        in_c = 1;
        #10 $display("Output: sum = %d, carry = %d", sum, carry);
    end
endmodule