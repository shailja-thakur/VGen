// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_or in1( in, in, out );
endmodule
