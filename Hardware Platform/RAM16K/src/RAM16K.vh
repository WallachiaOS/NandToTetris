module RAM16K(input [15:0] in, input CLK, input load, input [13:0] address, output [15:0] out);

    // variables used to decode load target
    wire [7:0] load_reg;
    wire [15:0] reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out; 

    // r/w RAM module based on address  
    DMux4Way load_dmux(
        (CLK & load),
        address[13:12], 
        load_reg[0], 
        load_reg[1], 
        load_reg[2], 
        load_reg[3]);
 
    RAM4K reg0 (in, load_reg[0], load, address[11:0], reg0_out);
    RAM4K reg1 (in, load_reg[1], load, address[11:0], reg1_out);
    RAM4K reg2 (in, load_reg[2], load, address[11:0], reg2_out); 
    RAM4K reg3 (in, load_reg[3], load, address[11:0], reg3_out);

    // R/W only the register by Address 
    Mux4Way16 mux8way16_gate(reg0_out, reg1_out, reg2_out, reg3_out, out, address[13:12]);
endmodule