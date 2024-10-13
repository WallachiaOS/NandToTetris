
module And16(input [15:0] in_a, input[15:0] in_b, output [15:0] out);
    wire signed [15:0] temp_out;

    Nand nand_gate0(in_a[0],in_b[0], temp_out[0]);
    Nand nand_gate1(in_a[1],in_b[1], temp_out[1]);
    Nand nand_gate2(in_a[2],in_b[2], temp_out[2]);
    Nand nand_gate3(in_a[3],in_b[3], temp_out[3]);
    Nand nand_gate4(in_a[4],in_b[4], temp_out[4]);
    Nand nand_gate5(in_a[5],in_b[5], temp_out[5]);
    Nand nand_gate6(in_a[6],in_b[6], temp_out[6]);
    Nand nand_gate7(in_a[7],in_b[7], temp_out[7]);
    Nand nand_gate8(in_a[8],in_b[8], temp_out[8]);
    Nand nand_gate9(in_a[9],in_b[9], temp_out[9]);
    Nand nand_gate10(in_a[10],in_b[10], temp_out[10]);
    Nand nand_gate11(in_a[11],in_b[11], temp_out[11]);
    Nand nand_gate12(in_a[12],in_b[12], temp_out[12]);
    Nand nand_gate13(in_a[13],in_b[13], temp_out[13]);
    Nand nand_gate14(in_a[14],in_b[14], temp_out[14]);
    Nand nand_gate15(in_a[15],in_b[15], temp_out[15]);

    Not16 not16_gate(temp_out[15:0], out[15:0]);
    /*
    Not not_gate(temp_out[0],out[0]);
    Not not_gate(temp_out[1],out[1]);
    Not not_gate(temp_out[2],out[2]);
    Not not_gate(temp_out[3],out[3]);
    Not not_gate(temp_out[4],out[4]);
    Not not_gate(temp_out[5],out[5]);
    Not not_gate(temp_out[6],out[6]);
    Not not_gate(temp_out[7],out[7]);
    Not not_gate(temp_out[8],out[8]);
    Not not_gate(temp_out[9],out[9]);
    Not not_gate(temp_out[10],out[10]);
    Not not_gate(temp_out[11],out[11]);
    Not not_gate(temp_out[12],out[12]);
    Not not_gate(temp_out[13],out[13]);
    Not not_gate(temp_out[14],out[14]);
    Not not_gate(temp_out[15],out[15]); */

endmodule