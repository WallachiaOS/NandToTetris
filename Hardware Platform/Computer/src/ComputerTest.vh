`timescale 1ns / 1ps

module ComputerTest;

    // Inputs
    reg clk;
    reg reset;

    wire [15:0] buff_instruction;
    wire [15:0] buff_inM, buff_outM, buff_addressM;

    // Instantiate the Unit Under Test (UUT)
    Computer uut (
        .CLK(clk), 
        .reset(reset),
        .buff_instruction(buff_instruction), 
        .buff_inM(buff_inM),
        .buff_outM(buff_outM), 
        .buff_addressM(buff_addressM)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 1;

        // Wait for global reset to finish
        #100;
        reset = 0;

        // Add stimulus here
        #200;
        reset = 1;
        #100;
        reset = 0;
    end

    always #10 clk = ~clk; // Generate clock signal

    initial begin
        // Monitor changes
        $monitor("Time = %0d, clk = %b, reset = %b, Instruction = %h, y = %d, D_Reg =%d, A_Reg =%d,", $time, clk, reset,  buff_instruction, buff_inM, buff_outM, buff_addressM);
    end

endmodule