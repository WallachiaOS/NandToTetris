module tb_Memory;

    reg [15:0] in;
    reg CLK;
    reg load;
    reg [14:0] address;
    wire [15:0] out;

    // Instantiate the Memory module
    Memory memory_inst (
        .in(in),
        .CLK(CLK),
        .load(load),
        .address(address),
        .out(out)
    );

    // Generate clock signal
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Test sequence
    initial begin
        // Initialize inputs
        in = 16'h0000;
        load = 0;
        address = 15'h0000;

        // Wait for a few clock cycles
        #10;

        // Test RAM16K region (0-16383)
        load = 1;
        address = 15'h0000; in = 16'hAAAA; #10; load = 0; #10;
        address = 15'h0000; #10; $display("RAM16K Address: %h, Data: %h", address, out);

        address = 15'h3FFF; in = 16'hBBBB; #10; load = 1; #10; load = 0; #10;
        address = 15'h3FFF; #10; $display("RAM16K Address: %h, Data: %h", address, out);

        // Test Screen region (16384-24575)
        address = 15'h4000; in = 16'hCCCC; #10; load = 1; #10; load = 0; #10;
        address = 15'h4000; #10; $display("Screen Address: %h, Data: %h", address, out);

        address = 15'h5FFF; in = 16'hDDDD; #10; load = 1; #10; load = 0; #10;
        address = 15'h5FFF; #10; $display("Screen Address: %h, Data: %h", address, out);

        // Test Keyboard region (24576)
        address = 15'h6000; in = 16'hEEEE; #10; load = 1; #10; load = 0; #10;
        address = 15'h6000; #10; $display("Keyboard Address: %h, Data: %h", address, out);

        // Test Keyboard region (24576)
        address = 15'h6000; in = 16'hFFFF; #10;
        address = 15'h6000; #10; $display("Keyboard Address: %h, Data: %h", address, out);

        // Test Keyboard region (24576)
        address = 15'h6000; in = 16'h0000; 
        address = 15'h6000; #10; $display("Keyboard Address: %h, Data: %h", address, out);

        // Finish simulation
        #100 $finish;
    end

endmodule