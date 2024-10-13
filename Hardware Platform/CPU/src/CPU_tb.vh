module tb_CPU;
   // Declare wires and regs
   wire [15:0] addressM;
   wire [15:0] outM;
   wire [15:0] PC;
   wire writeM;
   reg clk;
   reg [15:0] inM;
   reg [15:0] instruction;
   reg reset;

   // Instantiate the CPU module
   CPU uut (
       .outM(outM),
       .writeM(writeM),
       .addressM(addressM),
       .PCout(PC),
       .CLK(clk),
       .inM(inM),
       .instruction(instruction),
       .reset(reset)
   );

   // Generate clock signal
   initial begin
       clk = 0;
       forever #5 clk = ~clk;
   end

   initial begin
       // Run the simulation for a sufficient amount of time
       #1000 $finish;
   end

   // Test sequence
   initial begin
       // Initialize inputs
       reset = 1;
       inM = 16'h0000;
       instruction = 16'h0000;
       #10 reset = 0;

       // Apply instructions
       instruction = 16'b0011000000111001; // @12345 
       @(negedge clk);
       #10 $display("PC: %d, A: %d D: %d @12345", PC, addressM, outM);

       instruction = 16'b1110110000010000; // D=A
       @(negedge clk);
       #10 $display("PC: %d, A: %d D: %d D=A", PC, addressM, outM);

       instruction = 16'b0101101110100000; // @23456
       @(negedge clk);
       #10 $display("PC: %d, A: %d D: %d @23456", PC, addressM, outM);

       instruction = 16'b1110000111010000; // D=A-D
       @(negedge clk);
       #10 $display("PC: %d, A: %d D: %d D=A-D", PC, addressM, outM);

       instruction = 16'b1110001100001000; // M=D
       @(negedge clk);
       #10 $display("PC: %d, A: %d D: %d M=D", PC, addressM, outM);

       instruction = 16'b0000001111101000; // @1000
       @(negedge clk);
       #10 $display("PC: %d, A: %d D: %d @1000", PC, addressM, outM);

      instruction = 16'b1110011111010000; // D=D+1
      @(negedge clk);
      #10 $display("PC: %d, A: %d D: %d D=D+1", PC, addressM, outM);

       instruction = 16'b1110001100001000; // M=D
       @(negedge clk);
       #10 $display("PC: %d, A: %d D: %d M=D", PC, addressM, outM);

       instruction = 16'b0000001111101001; // @1001
       @(negedge clk);
       #10 $display("PC: %d, A: %d D: %d @1001", PC, addressM, outM);

       instruction = 16'b1110001100001000; // M=D
       @(negedge clk);
       #10 $display("PC: %d, A: %d D: %d M=D", PC, addressM, outM);

       // Finish simulation
       #10 $finish;
   end
endmodule