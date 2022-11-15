// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// assign out to in
module wire_assign( input in, output out );
// assign out to in
// assign out to in
module top_module( 
	input [2:0] SW,
	output [2:0] LEDR );

	wire [2:0] sum;
	wire cout;

	// Create instances of modules for first layer
	half_adder_4bit u0( .a(SW[0]), .b(SW[1]), .s(sum[0]), .cout(cout) );
	full_adder_4bit u1( .a(SW[0]), .b(SW[1]), .cin(cout), .sum(sum[1]), .cout(cout) );
	full_adder_4bit u2( .a(SW[0]), .b(SW[1]), .cin(cout),endmodule
