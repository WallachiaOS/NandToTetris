module RAM64_Optim_Testbench;
    reg [15:0] in;
    reg CLK;
    reg load;
    reg [5:0] address;
    wire [15:0] out;

    // Instantiate the RAM16K_Optim module
    RAM64_Optim ram64_optim (
        .in(in),
        .CLK(CLK),
        .load(load),
        .address(address),
        .out(out)
    );

    integer i;
    reg [5:0] rand_address [0:99];
    reg [15:0] rand_data [0:99];
    reg [15:0] read_data [0:99];

    initial begin
        // Initialize inputs
        in = 16'b0;
        CLK = 0;
        load = 0;
        address = 6'b0;

        // Write unique values to each address
        for (integer i = 0; i < 64; i = i + 1) begin
            #20 in = i; address = i; load = 1; CLK = 1; #20 CLK = 0;
        end

        // Read back the values
        load = 0;
        for (integer i = 0; i < 64; i = i + 1) begin
            #20 address = i; #20 $display("Address: %d, Output: %d", address, out);
        end

        // Finish simulation
        #20 $finish;
    end

    // Generate clock signal
    always #10 CLK = ~CLK;

endmodule