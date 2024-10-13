`include "Add16/src/Add16.vh"

module FullAdderTest;
    reg [15:0] in_a; 
    reg [15:0] in_b;
    wire signed [15:0] sum;
    Add16 add16_gate(in_a, in_b, sum);  

    initial begin
        $display("Testing Add16 Gate");
        $display("-----------------");
        $display("Inputs: in_a = 14, in_b = 59");
        in_a = 14;
        in_b = 59;

        #10 $display("Output: sum = %d", sum);
        $display("Inputs: in_a = 14, in_b = -59");
        in_a = 14;
        in_b = -59;
        #10 $display("Output: sum = %d", sum);
        $display("Inputs: in_a = -14, in_b = -59");
        in_a = -14;
        in_b = -59;
        #10 $display("Output: sum = %d", sum);
    end
endmodule