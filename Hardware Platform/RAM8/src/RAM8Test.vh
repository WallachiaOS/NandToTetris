module RAM8_tb;
    reg [15:0] in;
    reg CLK, write_enable;
    reg [2:0] address;
    wire [15:0] out;

    // Instantiate the RAM8 module
    RAM8 ram8 (in, CLK, write_enable, address, out);

    // Generate clock signal
    always begin 
        CLK = ~CLK;
        #10;
    end

    initial begin
        // Initialize inputs
        in = 16'b0;
        CLK = 0;
        address = 3'b0;
        

        // Apply test vectors
        #10 write_enable = 1;
        #40 in = 16'hAAAA; address = 3'b000; //CLK = 1; #20 CLK = 0;
        #40 in = 16'hBBBB; address = 3'b001; //CLK = 1; #20 CLK = 0;
        #40 in = 16'hCCCC; address = 3'b010; //CLK = 1; #20 CLK = 0;
        #40 in = 16'hDDDD; address = 3'b011; //CLK = 1; #20 CLK = 0;
        #40 in = 16'hEEEE; address = 3'b100; //CLK = 1; #20 CLK = 0;
        #40 in = 16'hFFFF; address = 3'b101; //CLK = 1; #20 CLK = 0;
        #40 in = 16'h1234; address = 3'b110; //CLK = 1; #20 CLK = 0;
        #40 in = 16'h0505; address = 3'b111; //CLK = 1; #20 CLK = 0;

        // Read back the values
        #40 write_enable = 0;
        #40 address = 3'b000; 
        #40 address = 3'b001; 
        #40 address = 3'b010; 
        #40 address = 3'b011; 
        #40 address = 3'b100; 
        #40 address = 3'b101; 
        #40 address = 3'b110; 
        #40 address = 3'b111; 

        
        // Finish simulation
        #10 $finish;
    end
    
    // Monitor changes
    initial begin
        $monitor("Time = %0d, Address = %d, D = %h, write_enable = %b, CLK = %b, out = %h", $time, address, in, write_enable, CLK, out);
    end

endmodule