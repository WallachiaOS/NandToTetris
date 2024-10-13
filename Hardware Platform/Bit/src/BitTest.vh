module Bit_tb;
    reg D;
    reg CLK;
    reg load;
    wire Q;

    // Instantiate the BitRegister module
    Bit reg1 (D, CLK, load, Q);

    initial begin
        // Initialize inputs
        D = 0;
        CLK = 0;
        load = 0;

        // Apply test vectors
        // Test Case 1: Write 1 to the register
        #10 D = 1; load = 1; CLK = 1; #10 CLK = 0;
        // Test Case 2: Hold the value (should remain 1)
        #10 load = 0; CLK = 1; #10 CLK = 0;
        // Test Case 3: Write 0 to the register
        #10 D = 0; load = 1; CLK = 1; #10 CLK = 0;
        // Test Case 4: Hold the value (should remain 0)
        #10 load = 0; CLK = 1; #10 CLK = 0;
        // Test Case 5: Write 1 to the register
        #10 D = 1; load = 1; CLK = 1; #10 CLK = 0;
        // Test Case 6: Hold the value (should remain 1)
        #10 load = 0; CLK = 1; #10 CLK = 0;
        // Test Case 7: Write 0 to the register
        #10 D = 0; load = 1; CLK = 1; #10 CLK = 0;
        // Test Case 8: Hold the value (should remain 0)
        #10 load = 0; CLK = 1; #10 CLK = 0;
        // Test Case 9: Toggle load while holding value (should remain 0)
        #10 load = 1; CLK = 1; #10 CLK = 0;
        #10 load = 0; CLK = 1; #10 CLK = 0;
        // Test Case 10: Write 1 to the register
        #10 D = 1; load = 1; CLK = 1; #10 CLK = 0;
        // Test Case 11: Hold the value (should remain 1)
        #10 load = 0; CLK = 1; #10 CLK = 0;

        // Finish simulation
        #10 $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0d, D = %b, load = %b, CLK = %b, Q = %b", $time, D, load, CLK, Q);
    end

    // Generate clock signal
    always #5 CLK = ~CLK;

endmodule