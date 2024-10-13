

module Not16(input [15:0] in_a,output [15:0] out);
        Nand nand_gate0(in_a[0],in_a[0], out[0]);
        Nand nand_gate1(in_a[1],in_a[1], out[1]);
        Nand nand_gate2(in_a[2],in_a[2], out[2]);
        Nand nand_gate3(in_a[3],in_a[3], out[3]);
        Nand nand_gate4(in_a[4],in_a[4], out[4]);
        Nand nand_gate5(in_a[5],in_a[5], out[5]);
        Nand nand_gate6(in_a[6],in_a[6], out[6]);
        Nand nand_gate7(in_a[7],in_a[7], out[7]);
        Nand nand_gate8(in_a[8],in_a[8], out[8]);
        Nand nand_gate9(in_a[9],in_a[9], out[9]);
        Nand nand_gate10(in_a[10],in_a[10], out[10]);
        Nand nand_gate11(in_a[11],in_a[11], out[11]);
        Nand nand_gate12(in_a[12],in_a[12], out[12]);
        Nand nand_gate13(in_a[13],in_a[13], out[13]);
        Nand nand_gate14(in_a[14],in_a[14], out[14]);
        Nand nand_gate15(in_a[15],in_a[15], out[15]);
endmodule