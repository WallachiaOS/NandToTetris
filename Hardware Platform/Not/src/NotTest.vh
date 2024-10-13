`include "Not/src/Not.vh"

module NotTest;
    reg in_a;
    wire out;
    Not not_gate(in_a,out);

    initial begin
        $display("Testing Not Gate");
        $display("-----------------");
        $display("Inputs: in_a = 0");
        in_a = 0;
        #10 $display("Output: out = %b", out);

        $display("Inputs: in_a = 1");
        in_a = 1;
        #10 $display("Output: out = %b", out);
        
    end
endmodule