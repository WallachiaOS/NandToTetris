
/* data Flip-Flop */
module DFF_NAND(input D, CLK, output Q, Qp);
    wire tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;

    // Invert D and CLK
    Nand nand_gate1(D, D, tmp1);
    Nand nand_gate2(CLK, CLK, tmp2);

    // Master Latch
    Nand nand_gate3(CLK, tmp1, tmp3);
    Nand nand_gate4(D, CLK, tmp4);
    Nand nand_gate5(tmp3, tmp6, tmp5);
    Nand nand_gate6(tmp4, tmp5, tmp6);

    // Slave Latch
    Nand nand_gate7(tmp5, tmp2, Q);
    Nand nand_gate8(tmp6, tmp2, Qp);   
    
endmodule


