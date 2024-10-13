module RAM8(input [15:0] in, input CLK, input load, input [2:0] address, output [15:0] out);

    // variables used to decode load target
    wire [7:0] load_reg;
    wire [15:0] reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out; 

    // r/w RAM module based on address  
    DMux8Way load_dmux(
        (CLK & load),
        address, 
        load_reg[0], 
        load_reg[1], 
        load_reg[2], 
        load_reg[3],
        load_reg[4], 
        load_reg[5], 
        load_reg[6], 
        load_reg[7]);

    // Select register by register_target & load 
    // and instantiate the 16-bit Register   
    Register reg0 (in, load_reg[0], load, reg0_out);
    Register reg1 (in, load_reg[1], load, reg1_out);
    Register reg2 (in, load_reg[2], load, reg2_out); 
    Register reg3 (in, load_reg[3], load, reg3_out);
    Register reg4 (in, load_reg[4], load, reg4_out);
    Register reg5 (in, load_reg[5], load, reg5_out);
    Register reg6 (in, load_reg[6], load, reg6_out);
    Register reg7 (in, load_reg[7], load, reg7_out); 

    // R/W only the register by Address 
    Mux8Way16 mux8way16_gate(reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out, out, address);
endmodule