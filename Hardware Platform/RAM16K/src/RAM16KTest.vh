module RAM16KTest;
    reg [15:0] in;
    reg CLK;
    reg write_enable;
    reg [13:0] address;
    wire [15:0] out;

    // Instantiate the RAM module
    RAM16K ram16k (
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
        address = 14'b0;

        // Write random data to random addresses
        for (i = 0; i < 100; i = i + 1) begin
            #20 in = rand_data[i]; address = rand_address[i]; load = 1; CLK = 1; #20 CLK = 0; load = 0;
        end

        // Read back the values
        for (i = 0; i < 100; i = i + 1) begin
            #20 address = rand_address[i]; CLK = 1; #20 CLK = 0;
            read_data[i] = out;
            $display("Address: %d, Written: %h, Read: %h", rand_address[i], rand_data[i], read_data[i]);
        end

        // Finish simulation
        #20 $finish;
    end

    // Generate clock signal
    always #10 CLK = ~CLK;

endmodule