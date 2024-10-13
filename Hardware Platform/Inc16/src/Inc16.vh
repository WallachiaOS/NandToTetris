
module Inc16(input [15:0] in, output [15:0] out);
    reg [15:0] inc = 1'b1;
    Add16 add16_gate(in, inc, out); 
endmodule