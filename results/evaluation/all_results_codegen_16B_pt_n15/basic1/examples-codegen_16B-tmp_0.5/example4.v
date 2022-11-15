// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// @param in: input wire
// @param out: output wire
// @return: nothing
void wire_assign( input in, output out ) {
	out = in;
}

// Design a module that multiplies the input by a constant
module wire_multiply( input in, constant k, output out );
// multiply in by k and put the result in out
// @param in: input wire
// @param k: constant
// @param out: output wire
// @return: nothing
void wire_multiply( input in, constant k, output out ) {
	out = in * k;
}

// Design a module that adds the input and the constant together
module wire_add( input in, constant k, output out );
// add in and k and put the result in out
// @param in: input wire
// @param k: constant
endmodule
