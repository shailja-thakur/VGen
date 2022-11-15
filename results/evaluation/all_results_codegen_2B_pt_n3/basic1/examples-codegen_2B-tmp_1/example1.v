// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

let a = 5
let b = 6;
let out = ( 
	// viewer has to indent the // here and enforce 
	// indentation. Can easily get selected output
	// if we had a console above. 
	// print ( "a = in, b = ", in )
	// and print ( "a = ", a, " and b = ", b )
	a = in,
	b = in
);

endmodule
