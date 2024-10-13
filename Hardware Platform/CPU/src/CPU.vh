module CPU (
    input [15:0] instruction, inM,
    input CLK, reset,
    output [15:0] outM,
    output [15:0] addressM, PCout,
    output writeM,
    output [15:0] check_buffer_1, check_buffer_2, check_buffer_3
);
   wire [15:0] ALUout;
   wire [15:0] ALUoutTmp;
   wire [15:0] ALUin, outRegD;
   wire [15:0] instruct_type;
   wire JumpPos, JumpNeg, JumpZero, zero, NotZero, negative, NotNegative, Positive, JumpPosTmp, JumpNegTmp, JumpZeroTmp, jumpTmp, Jump, NotJump;
   wire load_Aa, load_Ac, load_A, load_M, load_D;
   
   assign outM = ALUout; 
    // Drive writeM signal
   assign writeM = load_M; 

   // If bit15 = 0 then load data in A register
   Mux16 Mux16_1 (instruction, inM, instruct_type, instruction[15]);

   // bit 5 or bit15 is A Register
   Not Not_0 (instruction[15], load_Aa);
   And And_3 (instruction[5], instruction[15], load_Ac);
   Or or_1 (load_Aa, load_Ac, load_A);
   Register A(instruct_type, CLK, load_A, addressM);

   // bit12 sets if ALU computes using A-Register or InM
   Mux16 Mux16_2 (addressM, inM, ALUin, instruction[12]);

   // bit 3 sets command to write in RAM[A]
   And And_1 (instruction[3], instruction[15], load_M);

   // bit 4 is D Register
   And And_2 (instruction[4], instruction[15], load_D);
   Register D(ALUout, CLK, load_D, outRegD);
   // Compute ALU
   assign check_buffer_1 = ALUout;
   assign check_buffer_2 = outRegD;
   assign check_buffer_3 = load_D;
   ALU ALU1 (outRegD, ALUin, instruction[11], instruction[10], instruction[9], instruction[8], instruction[7], instruction[6], ALUout, zero, negative);

   // call PC
   PC PC1 (addressM, CLK, Jump, NotJump, reset, PCout);

   // Jump
   Not Not_1 (negative, NotNegative);
   Not Not_2 (zero, NotZero);
   And And_4 (NotNegative, NotZero, Positive);
   And And_5 (instruction[0], instruction[15], JumpPosTmp);
   And And_6 (instruction[1], instruction[15], JumpZeroTmp);
   And And_7 (instruction[2], instruction[15], JumpNegTmp);
   And And_8 (JumpPosTmp, Positive, JumpPos);
   And And_9 (JumpZeroTmp, zero, JumpZero);
   And And_10 (JumpNegTmp, negative, JumpNeg);
   Or Or_1 (JumpPos, JumpZero, jumpTmp);
   Or Or_2 (jumpTmp, JumpNeg, Jump);
   Not not_jmp(Jump, NotJump); 

endmodule