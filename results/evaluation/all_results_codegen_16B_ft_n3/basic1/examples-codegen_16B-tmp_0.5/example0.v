// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
	assign out = in;
// endmodule

module full_adder( input a, input b, input cin, output sum, output cout );
// define the sum and carry outputs
	assign sum = a ^ b ^ cin;
	assign cout = (a & b) | (b & cin) | (cin & a);
// endmodule

// Design a module that takes as input the three 
// bits of a, b, and c, and outputs the two bits
// of sum and carry.
module three_bit_adder( input [2:0] a, input [2:0] b, input [1:0] c,
output [2:0] sum, output cout );
// define the sum and carry outputs
	wire [2:0] s0, s1; // temporary wires
	wire c0, c1;
	fullendmodule
