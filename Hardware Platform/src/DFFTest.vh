module DFF_tb;
    reg D;
    reg CLK;
    wire Q;
    wire QN;

    // Instantiate the DFF_NAND module
    DFF_NAND dff_gate (
        .D(D),
        .CLK(CLK),
        .Q(Q),
        .Qp(QN)
    );

    initial begin
        // Initialize inputs
        D = 0;
        CLK = 0;

        // Apply test vectors
        #10 D = 1; CLK = 1;
        #10 CLK = 0;
        #10 D = 0; CLK = 1;
        #10 CLK = 0;
        #10 D = 1; CLK = 1;
        #10 CLK = 0;

        // Finish simulation
        #10 $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0d, D = %b, CLK = %b, Q = %b, QN = %b", $time, D, CLK, Q, QN);
    end
endmodule