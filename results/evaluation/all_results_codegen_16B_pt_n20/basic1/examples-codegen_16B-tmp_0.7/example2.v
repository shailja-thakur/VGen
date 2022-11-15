// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );

// Design a module that performs the following operation on a single bit:
//	inclusive OR
module bit_or( input in1, input in2, output out );
// assign out to (in1 or in2)
bit_or( in1, in2, out );

// Design a module that performs the following operation on two bits:
//	exclusive OR
module bit_xor( input in1, input in2, output out );
// assign out to (in1 xor in2)
bit_xor( in1, in2, out );

// Design a module that performs the following operation on a bit and a number:
//	bit wise AND
module bit_and( input in, input in2, output out );
// assign out to (in and in2)
bit_and( in, in2, outendmodule
