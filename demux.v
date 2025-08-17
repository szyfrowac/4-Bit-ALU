module demux(
    input  sel,   // opcode[0]
    input  i,     // enable (set to 1)
    output y0, y1 // y0 = AND enable, y1 = OR enable
);
    assign y0 = (sel) ? 1'b0 : i;
    assign y1 = (sel) ? i    : 1'b0;
endmodule
