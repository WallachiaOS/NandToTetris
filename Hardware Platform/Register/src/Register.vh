
/* 16-Bit Register implemented from data Flip-Flop */
module Register(input [15:0] in, input CLK, load, output reg [15:0] out);

    /*
    DFF_sequencial dff0(in[0], load, CLK, out[0]);
    DFF_sequencial dff1(in[1], load, CLK, out[1]);
    DFF_sequencial dff2(in[2], load,  CLK, out[2]);
    DFF_sequencial dff3(in[3], load,  CLK, out[3]);
    DFF_sequencial dff4(in[4], load,  CLK, out[4]);
    DFF_sequencial dff5(in[5], load,  CLK, out[5]);
    DFF_sequencial dff6(in[6], load,  CLK, out[6]);
    DFF_sequencial dff7(in[7], load,  CLK, out[7]);
    DFF_sequencial dff8(in[8], load,  CLK, out[8]);
    DFF_sequencial dff9(in[9], load,  CLK, out[9]);
    DFF_sequencial dff10(in[10], load,  CLK, out[10]);
    DFF_sequencial dff11(in[11], load,  CLK, out[11]);
    DFF_sequencial dff12(in[12], load,  CLK, out[12]);
    DFF_sequencial dff13(in[13], load,  CLK, out[13]);
    DFF_sequencial dff14(in[14], load,  CLK, out[14]);
    DFF_sequencial dff15(in[15], load,  CLK, out[15]);
*/
    always @(posedge CLK) begin
        if(load) out = in;
    end 

endmodule

module DFF_sequencial(input in, input  CLK, load, output reg out);

    initial begin
        out <= 1'b0;
    end

    always @(posedge CLK) begin
        if(load)
            out <= in;
    end

endmodule