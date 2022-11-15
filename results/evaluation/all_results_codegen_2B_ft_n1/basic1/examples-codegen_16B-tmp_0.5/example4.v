// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
	assign out = in;
// endmodule

// Design a module that creates a binary number in a string
module string_to_binary( input [7:0] in, output [7:0] out );
// create a counter
	integer i;
// create a 8 bit register
	reg [7:0] out;
// assign each bit of the input to the output
	always @ (in)
	begin
// initialize the counter
	i = 0;
// start at the right end of the register
	out = in[7];
// shift the bits left
	for (i = 7; i >= 0; i = i-1)
	begin
// assign the bit to the left of the current bit
	out = out << 1;
// add the bit to the left of the current bit
	out[0] = in[i];
// end theend
end
endmodule
