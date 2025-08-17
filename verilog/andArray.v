module andArray(
    input [3:0] a, b,
    input demux_w,
    output [3:0] y
);
    assign y = (a & b) & {4{demux_w}};
endmodule