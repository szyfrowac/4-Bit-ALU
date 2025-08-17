module logicUnit(
    input  [3:0] a, b,
    input  [1:0] opcode,
    output [3:0] y
);
    wire demux_and_w, demux_or_w;
    wire [3:0] mux_and_w, mux_or_w; 
    wire [3:0] mux_out;

    // demux splits opcode[0] into and/or enable lines, depending on opcode[1]
    // For logic ops (10=AND, 11=OR), enable one path
    demux d1(opcode[0], opcode[1], demux_and_w, demux_or_w);

    andArray andArr1(a, b, demux_and_w, mux_and_w);
    orArray  orArr1(a, b, demux_or_w, mux_or_w);

    mux m1(mux_and_w, mux_or_w, opcode[0], mux_out);

    assign y = mux_out; 
endmodule
