module tb_ROM32K;

    reg [14:0] address;
    reg clk;
    wire [15:0] data;

    // Instantiate the ROM32K module
    ROM32K rom_inst (
        .address(address),
        .CLK(clk),
        .out(data)
    );

    // Generate clock signal
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        // Initialize address
        address = 0;

        // Wait for a few clock cycles
        #1000;

        // Read from different addresses
        address = 15'h0001;
        #10;
        address = 15'h0010;
        #50;
        address = 15'h000A;
        #10;

        // Finish simulation
        #10 $finish;
    end
    // Monitor changes
    initial begin
        $monitor("Time = %0d, Address = %h, data = %h", $time, address, data);
    end
endmodule