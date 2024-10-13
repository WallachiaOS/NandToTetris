module RAM4KTest;
    reg [15:0] in;
    reg CLK;
    reg write_enable;
    reg [11:0] address;
    wire [15:0] out;

    // Instantiate the RAM module
    RAM4K ram4k (
        .in(in),
        .CLK(CLK),
        .load(write_enable),
        .address(address),
        .out(out)
    );

    initial begin
        // Initialize inputs
        in = 16'b0;
        CLK = 0;
        write_enable = 0;
        address = 12'b0;

        // Write unique values to each address
        for (integer i = 0; i < 4096; i = i + 1) begin
            #20 in = i; address = i; write_enable = 1; CLK = 1; #20 CLK = 0; write_enable = 0;
        end

        // Read back the values
        write_enable = 0;
        for (integer i = 0; i < 4096; i = i + 1) begin
            #20 address = i; CLK = 1; #20 CLK = 0;
            $display("Address: %d, Output: %d", address, out);
        end

        // Finish simulation
        #20 $finish;
    end

    // Generate clock signal
    always #10 CLK = ~CLK;

endmodule