module RAM4K(input [15:0] in, input CLK, input load, input [11:0] address, output [15:0] out);

    // variables used to decode load target
    wire [7:0] load_reg;
    wire [15:0] reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out; 

    // r/w RAM module based on address  
    DMux8Way load_dmux(
        (CLK & load),
        address[11:9], 
        load_reg[0], 
        load_reg[1], 
        load_reg[2], 
        load_reg[3],
        load_reg[4], 
        load_reg[5], 
        load_reg[6], 
        load_reg[7]);
 
    RAM512 reg0 (in, load_reg[0], load, address[8:0], reg0_out);
    RAM512 reg1 (in, load_reg[1], load, address[8:0], reg1_out);
    RAM512 reg2 (in, load_reg[2], load, address[8:0], reg2_out); 
    RAM512 reg3 (in, load_reg[3], load, address[8:0], reg3_out);
    RAM512 reg4 (in, load_reg[4], load, address[8:0], reg4_out);
    RAM512 reg5 (in, load_reg[5], load, address[8:0], reg5_out);
    RAM512 reg6 (in, load_reg[6], load, address[8:0], reg6_out);
    RAM512 reg7 (in, load_reg[7], load, address[8:0], reg7_out); 

    // R/W only the register by Address 
    Mux8Way16 mux8way16_gate(reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out, out, address[11:9]);
endmodule