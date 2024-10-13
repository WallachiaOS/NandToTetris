

module HalfAdder(a,b, sum, carry);
    input a, b;
    output sum, carry;

    And and_gate(a,b,carry);
    Xor xor_gate(a, b, sum); 

endmodule