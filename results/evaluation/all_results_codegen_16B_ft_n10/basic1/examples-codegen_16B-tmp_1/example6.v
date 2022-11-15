// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
	// generate
not(w_not,in);
and(out,in,w_not);
endmodule
