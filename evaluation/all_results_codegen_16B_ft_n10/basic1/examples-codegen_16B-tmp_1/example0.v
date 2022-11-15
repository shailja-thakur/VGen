// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// note that this is different that inout copurper design. It is not explicitly
// defining an IOType. It will be converted automaticly to an IOType output(out=in)?
	
	assign out=in;	
endmodule
