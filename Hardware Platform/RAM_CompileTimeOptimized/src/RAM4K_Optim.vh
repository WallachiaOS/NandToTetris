module RAM4K_Optim (input [15:0] in, input CLK, input load, input [11:0] address, output reg [15:0] out);
    
           reg [15:0] RAM [(2**12)-1:0];
    
           always @ (posedge CLK) begin
    	       out <= RAM[address];
    
    	       if(load) begin
    		       RAM[address] <= in;
    	       end
           end
    endmodule