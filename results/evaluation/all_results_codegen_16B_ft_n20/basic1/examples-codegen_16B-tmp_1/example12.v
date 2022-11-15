// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// NOTE: You should use the wire statement
// it will change the scope to the assign
// statement.
//
//	assign out = in;
	 
	wire w;
	assign w = in;
	assign out = w;
endmodule
