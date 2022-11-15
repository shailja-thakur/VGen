// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire _1, _2;
nand #2 _1 (out, in, in);
nand #1 _2 (out, in, _1);
endmodule
