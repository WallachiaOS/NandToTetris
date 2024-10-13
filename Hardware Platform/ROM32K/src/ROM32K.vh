
/* 16-Bit instruction memory */
module ROM32K(input [14:0] address, input CLK, output reg [15:0] out);
    
    // Declare the ROM array to store the instructions
    reg [15:0] ROM[0:32767]; // 32K x 16-bit ROM

    // Initialize the ROM 
    initial begin
        $readmemh("ROM32K/rom/ROM32K.hex", ROM); // Load ROM contents from a hex file
    end
    
    always @(posedge CLK) begin
        out <= ROM[address];
    end 

endmodule