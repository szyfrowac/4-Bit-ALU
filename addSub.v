module addSub(
    input [3:0] a, b,
    input [1:0] opcode,
    output [3:0] y,
    output carryOut
);
    wire [3:0] new_b, sum;
    wire c0, c1, c2, carry;

    // If opcode[0]=1 → subtract, so invert b (XOR with 1111) and add 1
    assign new_b = b ^ {4{opcode[0]}};

    fullAdder f0(a[0], new_b[0], opcode[0], sum[0], c0);
    fullAdder f1(a[1], new_b[1], c0, sum[1], c1);
    fullAdder f2(a[2], new_b[2], c1, sum[2], c2);
    fullAdder f3(a[3], new_b[3], c2, sum[3], carry);

    assign carryOut = carry;   // MSB carry
    assign y = sum;            // no masking

endmodule
