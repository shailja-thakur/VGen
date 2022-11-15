// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// module wire_assign( input in, output out ) {}
// Wire the blocks together using the wire_assign module
wire_assign( input in, output out ) {
	out = in + 2;
}
// The module wire_assign is only a module. It does not need to be
// included in the program.
endmodule
