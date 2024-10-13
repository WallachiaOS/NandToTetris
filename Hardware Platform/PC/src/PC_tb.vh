module PC_tb;

    // Inputs
    reg [15:0] in;
    reg CLK;
    reg load;
    reg inc;
    reg reset;

    // Outputs
    wire [15:0] out;

    // Instantiate the Unit Under Test (UUT)
    PC uut (
        .in(in), 
        .CLK(CLK), 
        .load(load), 
        .inc(inc), 
        .reset(reset), 
        .out(out)
    );

    initial begin
        // Initialize Inputs
        in = 0;
        CLK = 0;
        load = 0;
        inc = 0;
        reset = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Test reset
        reset = 1;
        #10;
        reset = 0;
        #10;
        
        // Test load
        in = 16'h1234;
        load = 1;
        #10;
        load = 0;
        #10;
        
        // Test increment
        inc = 1;
        #10;
        inc = 0;
        #10;
        
        // Test load with increment
        in = 16'h5678;
        load = 1;
        #10;
        load = 0;
        inc = 1;
        #10;
        inc = 0;
        #10;
        
        // Test reset with increment
        reset = 1;
        #10;
        reset = 0;
        inc = 1;
        #10;
        inc = 0;
        #10;
        
        // Finish simulation
        $finish;
    end
    
    // Monitor changes
    initial begin
        $monitor("Time = %0d, In = %d, reset = %b, load = %b, inc = %b, CLK = %b, Out = %d", $time, in, reset, load, inc, CLK, out);
    end

    always #5 CLK = ~CLK; // Clock generator

endmodule