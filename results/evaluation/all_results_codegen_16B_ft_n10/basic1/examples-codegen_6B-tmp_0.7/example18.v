// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module assign( input in, output out ) {
	out <= in;
}

// Design a module that increments the input by 1
module add_one( input in ) {
	in <= in + 1;
}

// Design an adder module
module adder( input a, input b ) {
	output out = a + b;
}

// Design an 8-bit shift register
module shift_register( input in ) {
	output out = in << 1;
}

// Design an 8-bit BCD shift register
module bcd_shift_register( input in ) {
	output out = in << 1;
	output out2 = out & 0x100;
	output out3 = out2 << 1;
	output out4 = out3 << 1;
	output out5 = out4 << 1;
	output out6 = out5 <<endmodule
