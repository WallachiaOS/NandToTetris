`include "Or16/src/Or16.vh"

module Or16Test;
    reg [15:0] in_a;
    reg [15:0] in_b;
    wire signed [15:0] out;
    Or16 or16_gate(in_a, in_b, out);

    initial begin
        $display("Testing OR16 Gate");
        $display("-----------------");
        $display("Inputs: in_a = 18500, in_b = 19264");
        in_a = 18500;
        in_b = 19264;
        #10 $display("Output: out = %d", out);
        $display("Inputs: in_a = 2384, in_b = 2370");
        in_a = 2384;
        in_b = 2370;
        #10 $display("Output: out = %d", out);
        $display("Inputs: in_a = 8400, in_b = -30398");
        in_a = 8400;
        in_b = -30398;
        #10 $display("Output: out = %d", out);
            
    end
endmodule