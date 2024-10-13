module RAM512(input [15:0] in, input CLK, input load, input [8:0] address, output [15:0] out);

    // variables used to decode load target
    wire [7:0] load_reg;
    wire [15:0] reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out; 

    // r/w RAM module based on address  
    DMux8Way load_dmux(
        (CLK & load),
        address[8:6], 
        load_reg[0], 
        load_reg[1], 
        load_reg[2], 
        load_reg[3],
        load_reg[4], 
        load_reg[5], 
        load_reg[6], 
        load_reg[7]);
 
    RAM64 reg0 (in, load_reg[0], load, address[5:0], reg0_out);
    RAM64 reg1 (in, load_reg[1], load, address[5:0], reg1_out);
    RAM64 reg2 (in, load_reg[2], load, address[5:0], reg2_out); 
    RAM64 reg3 (in, load_reg[3], load, address[5:0], reg3_out);
    RAM64 reg4 (in, load_reg[4], load, address[5:0], reg4_out);
    RAM64 reg5 (in, load_reg[5], load, address[5:0], reg5_out);
    RAM64 reg6 (in, load_reg[6], load, address[5:0], reg6_out);
    RAM64 reg7 (in, load_reg[7], load, address[5:0], reg7_out); 

    // R/W only the register by Address 
    Mux8Way16 mux8way16_gate(reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out, out, address[8:6]);
endmodule