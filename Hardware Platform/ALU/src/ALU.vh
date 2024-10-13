
module ALU(
    input [15:0] x, input [15:0] y, 
    input zx, nx, zy, ny, f, no,
    output [15:0] out,
    output zr, ng);

    reg [15:0] zeroes = 16'b0000000000000000; // reg [15:0] tmp_x also initialize all bits with zero
    wire [15:0] tmp_zx_out, tmp_nx_out, tmp_zy_out, tmp_ny_out, f_out, no_out;
    wire [15:0] tmp_nx, tmp_ny, tmp_f_add, tmp_f_and, tmp_out;

    // pre-set x 
    // if zx = 1 then x = 0
    // else if zx = 0 then x = x
    Mux16 mux16_gate_x1(x, zeroes, tmp_zx_out, zx);
    // if nx = 1 then x =! x
    // else if nx = 0 then x = x
    Not16 not16_gate_x2(tmp_zx_out, tmp_nx);
    Mux16 mux16_gate_x3(tmp_zx_out, tmp_nx, tmp_nx_out, nx);

    // pre-set y 
    // if zy = 1 then y = 0
    // else if zy = 0 then y = y
    Mux16 mux16_gate_y1(y, zeroes, tmp_zy_out, zy);
    // if ny = 1 then y =! y
    // else if ny = 0 then y = y
    Not16 not16_gate_y2(tmp_zy_out, tmp_ny);
    Mux16 mux16_gate_y3(tmp_zy_out, tmp_ny, tmp_ny_out, ny);

    // eval f 
    // if f = 1 then out = x + y
    // else if  f = 0 then out = x & y
    Add16 add16_gate_x_y(tmp_nx_out, tmp_ny_out, tmp_f_add);
    And16 and16_gate_x_y(tmp_nx_out, tmp_ny_out, tmp_f_and);
    Mux16 mux16_gate_f1(tmp_f_and, tmp_f_add, f_out, f);

    // negation out
    // if no = 1 then out = !out
    // if no = 0 then out = out
    Not16 not16_gate_no1(f_out, tmp_out);
    Mux16 mux16_gate_n01(f_out, tmp_out, no_out, no);

    assign out = no_out;

    //  zr = 1 when out = 0
    wire or_tmp1, or_tmp2, or_result;
    Or8Way or8_gate(out[7:0], or_tmp1);
    Or8Way or8_gate1(out[15:8], or_tmp2);
    Or or_gate(or_tmp1, or_tmp2, or_result);
    Not not_gate(or_result, zr);
    
    // ng = 1 when out < 0
    // if  MSB = 1, out[15] = 1 then ng = 1; 
    assign ng = out[15];

endmodule

