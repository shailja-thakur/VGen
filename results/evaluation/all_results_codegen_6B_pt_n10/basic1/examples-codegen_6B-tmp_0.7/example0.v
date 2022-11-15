// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module output_init( output out );
// assign out to input
module input_init( input in );

input in;
output out;

// module id() {}

// module input_assign( input in );
// module output_assign( output out );

// assign out to in
wire_assign( in, out );

output_init(out);
input_init(in);


/*
 * INPUTS: in
 * OUTPUTS: out
 */

module wire_assign( input in, output out )
{
	always @(posedge clk)
	out <= in;
}

module output_init( output out )
{
	initial begin
	out <= 0;
	end
}

module input_init( input in )
{
	initial begin
	in <= 0;
	end
endmodule
