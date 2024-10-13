module Computer(input reset, CLK, output [15:0] instruction, buff_instruction, buff_inM, buff_outM, buff_addressM);

    wire [15:0] addressM, outM, pcOut;
    wire [15:0] pc; 
    wire [15:0] inM;
    wire writeM;

    wire [15:0] buff_instruction, buff_inM, buff_outM, buff_addressM, buff1, buff2, buff3;

    // Read from ROM32K instruction op-bytes
    ROM32K ROM (pc[14:0], CLK, instruction);

    // CPU to execute instructions and fetch next PC
    CPU cpu0 (instruction,  inM, CLK, reset , outM , addressM, pc, writeM, buff1, buff2 , buff3);      

   // Readkey, display screen or manipulate data
    Memory RAM (outM, CLK, writeM, addressM[14:0], inM); 

    assign buff_instruction = instruction;
    assign buff_inM = inM;
    assign buff_outM = outM;
    assign buff_addressM = addressM;
    //assign pcOut = pc;


endmodule