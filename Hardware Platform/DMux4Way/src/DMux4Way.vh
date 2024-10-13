

module DMux4Way(input in, input [1:0] sel,
        output a, b, c, d);
    
    // made from 3 gates of DMUX
    DMux dmux_gate1(in, tmp_ab, tmp_cd, sel[1]);
    DMux dmux_gate2(tmp_ab, a, b, sel[0]);
    DMux dmux_gate3(tmp_cd, c, d, sel[0]);

endmodule