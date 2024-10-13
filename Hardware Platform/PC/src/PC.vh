module PC(input [15:0] in, input CLK, load, inc, reset, output reg [15:0] out);

    always @(posedge CLK) begin
        
        if (reset) begin
            out <= 16'b0;
        end else if (load) begin
            out <= in;
        end else if (inc) begin
            out <= out + 1;
        end
        
    end 

endmodule