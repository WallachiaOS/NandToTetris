module Memory(input [15:0] in, input CLK, input load, input [14:0] address, output [15:0] out);
    
    wire [15:0] RamOut;
    wire [15:0] ScreenOut;
    wire [15:0] keyOut;

    // 16k registers serving as general-purpose data store
    RAM16K_Optim ram16k(in, CLK, (load & (~address[14])), address[13:0], RamOut);
    // 8k registers serving as screen memory
    Screen screen(in, CLK, (load & address[14] & (~address[13])), address[12:0], ScreenOut);
    // 16-bit register serving as keyboard memory
    Register keyboard(in, CLK, (load & address[13] & address[14]), keyOut);

    wire [15:0] select = address[13] ? keyOut : ScreenOut;
    assign out = address[14] ? select : RamOut; 

endmodule