

module DMux8Way(input in, input [2:0] sel,
        output a, b, c, d, e , f, g, h);
    
    wire group1, group2;

    DMux dmux_gate0(in, group1, group2, sel[2]);
    DMux4Way dmux_gate1(group1, sel[1:0], a, b, c, d);
    DMux4Way dmux_gate2(group2, sel[1:0], e, f, g, h);

endmodule