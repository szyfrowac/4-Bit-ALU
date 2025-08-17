module ALU(
    input  [3:0] a, b,
    input  [1:0] opcode,
    output [3:0] y,
    output carryOut
);
    wire [3:0] arith_out, logic_out;
    wire arith_carry;

    // Arithmetic Unit (00=add, 01=sub)
    addSub u1(a, b, opcode, arith_out, arith_carry);

    // Logic Unit (10=AND, 11=OR)
    logicUnit u2(a, b, opcode, logic_out);

    // Final mux: opcode[1] decides arithmetic(0) vs logic(1)
    assign y       = (opcode[1]) ? logic_out : arith_out;
    assign carryOut = (opcode[1]) ? 1'b0 : arith_carry;

endmodule
