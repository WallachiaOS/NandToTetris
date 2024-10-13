`include "And16/src/And16.vh"

module And16Test;
    reg [15:0] in_a; 
    reg [15:0] in_b;
    wire signed [15:0] out;
    And16 and16_gate(in_a,in_b,out);   

    initial begin
        $display("Testing And16 Gate");
        $display("-----------------");
        $display("Inputs: in_a = 2053, in_b = 2072");
        in_a = 2053;
        in_b = 2072;
        #10 $display("Output: out = %d", out);
        $display("Inputs: in_a = 520, in_b = 3141");
        in_a = -31219;
        in_b = -29627;
        #10 $display("Output: out = %d", out);

    end
endmodule