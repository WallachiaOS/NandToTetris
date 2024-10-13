
/* Bit Register implemented from data Flip-Flop */
module Bit(input in, input CLK, input load, output out);
    wire Qp;
    wire mux_out;

    // if load = 1 write to RAM
    // else if load = 0 output previous data
    Mux mux_gate(out, in, mux_out, load);
    
    // DFF from NAND is highly unstable and not perform as expected
    //DFF_NAND dff_bit_gate (mux_out, CLK, out, Qp);

    DFF dff_bit_gate (mux_out, CLK, out); 

endmodule

module DFF(input in, CLK, output reg out);

    always @(posedge CLK) begin
        out <= in;
    end

endmodule