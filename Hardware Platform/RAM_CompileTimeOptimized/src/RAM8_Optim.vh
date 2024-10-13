module RAM64_Optim (input [15:0] in, input CLK, input load, input [2:0] address, output reg [15:0] out);
    
           reg [15:0] RAM [(2**3)-1:0];
    
           always @ (posedge CLK) begin
    	       out <= RAM[address];
    
    	       if(load) begin
    		       RAM[address] <= in;
    	       end
           end
    endmodule