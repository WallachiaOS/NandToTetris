module RAM16K_Optim_Testbench;
    reg [15:0] in;
    reg CLK;
    reg load;
    reg [13:0] address;
    wire [15:0] out;

    // Instantiate the RAM16K_Optim module
    RAM16K_Optim ram16k_optim (
        .in(in),
        .CLK(CLK),
        .load(load),
        .address(address),
        .out(out)
    );

    integer i;
    reg [13:0] rand_address [0:99];
    reg [15:0] rand_data [0:99];
    reg [15:0] read_data [0:99];

    initial begin
        // Initialize inputs
        in = 16'b0;
        CLK = 0;
        load = 0;
        address = 14'b0;

        // Generate 10 random addresses and data
        for (i = 0; i < 100; i = i + 1) begin
            rand_address[i] = $random % 16384; // 14-bit random address
            rand_data[i] = $random; // 16-bit random data
        end

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