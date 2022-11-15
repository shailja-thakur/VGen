// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
	assign out = in;
	// setting it is just changing the value of in at run time, so just adding one
	always@*
	begin
	in = 1'b1;
	#3;
	in = 1'b0;
	#3;
	in = 1'b1;
	#3;
	in = 1'b0;
	end
endmodule
