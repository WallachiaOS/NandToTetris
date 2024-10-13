`include "Not16/src/Not16.vh"

module Not16Test;
    reg [15:0] in_a;
    wire signed [15:0] out;
    Not16 not_gate(in_a,out);

    initial begin
        $display("Testing Not16 Gate");
        $display("-----------------");
        $display("Inputs: in_a = 25");
        in_a = 25;
        #10 $display("Output: out = %d", out);

        $display("Inputs: in_a = 4181");
        in_a = 4181;
        #10 $display("Output: out = %d", out);
        
    end
endmodule