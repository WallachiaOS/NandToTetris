
module Mux16(input [15:0] in_a, input [15:0] in_b, output [15:0] out, input sel);

    wire signed [15:0] tmp_out;
    
    Mux mux_gate0(in_a[0],in_b[0],tmp_out[0], sel);
    Mux mux_gate1(in_a[1],in_b[1],tmp_out[1], sel);
    Mux mux_gate2(in_a[2],in_b[2],tmp_out[2], sel);
    Mux mux_gate3(in_a[3],in_b[3],tmp_out[3], sel);
    Mux mux_gate4(in_a[4],in_b[4],tmp_out[4], sel);
    Mux mux_gate5(in_a[5],in_b[5],tmp_out[5], sel);
    Mux mux_gate6(in_a[6],in_b[6],tmp_out[6], sel);
    Mux mux_gate7(in_a[7],in_b[7],tmp_out[7], sel);
    Mux mux_gate8(in_a[8],in_b[8],tmp_out[8], sel);
    Mux mux_gate9(in_a[9],in_b[9],tmp_out[9], sel);
    Mux mux_gate10(in_a[10],in_b[10],tmp_out[10], sel);
    Mux mux_gate11(in_a[11],in_b[11],tmp_out[11], sel);
    Mux mux_gate12(in_a[12],in_b[12],tmp_out[12], sel);
    Mux mux_gate13(in_a[13],in_b[13],tmp_out[13], sel);
    Mux mux_gate14(in_a[14],in_b[14],tmp_out[14], sel);
    Mux mux_gate15(in_a[15],in_b[15],tmp_out[15], sel);

    assign out = tmp_out;
    
endmodule