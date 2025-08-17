module mux(
    input  [3:0] I0, I1,
    input        S,
    output [3:0] Y
);
    assign Y = (S) ? I1 : I0;
endmodule
