`include "Inc16/src/Inc16.vh"

module FullAdderTest;
    reg [15:0] in_a;     
    wire signed [15:0] out;
    Inc16 add16_gate(in_a, out);  

    initial begin
        $display("Testing Inc16 Gate");
        $display("-----------------");
        $display("Inputs: in_a = 14");
        in_a = 14;
        #10 $display("Output: sum = %d", out);
        $display("Inputs: in_a = -59");
        in_a = -59;
        #10 $display("Output: sum = %d", out);
        $display("Inputs: in_a = -1245");
        in_a = -1245;
        #10 $display("Output: sum = %d", out);
        #10 $display("Inputs: in_a = -1");
        in_a = -1;
        #10 $display("Output: sum = %d", out);
        #10 $display("Inputs: in_a = 0");
        in_a = 0;
        #10 $display("Output: sum = %d", out);
    end
endmodule