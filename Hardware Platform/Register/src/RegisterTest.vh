module Register_tb;
    reg [15:0] D;
    reg CLK;
    reg load;
    wire [15:0] Q;

    // Instantiate the BitRegister module
    Register reg16(D, CLK, load, Q);

    // Generate clock signal
    always begin 
        CLK = ~CLK;
        #20;
    end

    initial begin
        D = 0; load = 0; CLK = 0;
        // Apply test vectors
        // Test Case 1: Write 1 to the register
        #40 D = 16'hAAAA; load = 1; 
        // Test Case 2: Hold the value (should remain 1)
        #40 load = 0; 
        // Test Case 3: Write 0 to the register
        #40 D = 16'hBBBB; load = 1; 
        // Test Case 4: Hold the value (should remain 0)
        #40 load = 0; 
        // Test Case 5: Write 1 to the register
        #40 D = 16'hCCCC; load = 1; 
        // Test Case 6: Hold the value (should remain 1)
        #40 load = 0; 
        // Test Case 7: Write 0 to the register
        #40 D = 16'h0000; load = 1; 
        // Test Case 8: Hold the value (should remain 0)
        #40 load = 0; 
        // Test Case 9: Toggle load while holding value (should remain 0)
        #40 load = 1; 
        #40 load = 0; 
        // Test Case 10: Write 1 to the register
        #40 D = 16'hEEEE; load = 1; 
        // Test Case 11: Hold the value (should remain 1)
        #40 load = 0; 

        // Finish simulation
        #10 $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0d, D = %h, load = %b, CLK = %b, Q = %h", $time, D, load, CLK, Q);
    end


endmodule