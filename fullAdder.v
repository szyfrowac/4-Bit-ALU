module fullAdder(
    input a, b, c,
    output sum, carryOut
);
    assign sum = a^b^c;
    assign carryOut = (a&b) | (a&c) | (c&b);

endmodule