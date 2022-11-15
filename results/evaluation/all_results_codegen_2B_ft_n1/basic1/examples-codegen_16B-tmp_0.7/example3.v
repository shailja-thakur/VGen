// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
	// module instance name and port (ex: "U1") must be identical
	assign out = in;
	// defparam statement can be used to change the parameter values
	defparam U1.INIT = 0; // initial state is 0
	// defparam statement can change the parameter values
endmodule
