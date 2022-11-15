// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
// assign out to in, using a function
wire_assign( in, out, &out );
endmodule
