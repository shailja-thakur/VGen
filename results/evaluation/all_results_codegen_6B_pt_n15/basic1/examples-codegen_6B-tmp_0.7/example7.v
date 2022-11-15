// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;
// wire_assign is given an input value to assign to an output value
// and returns the output value
module wire_assign2( input in );
assign out2 = in;
// wire_assign2 is given an input value to assign to an output value
// and returns the output value
//
// wire_assign2 can also be used as a function
//
function wire_assign2( in ) return out2;
// wire_assign2 can also be a procedure
function wire_assign3( in ) return out2;
// wire_assign3 can also be a procedure
//
// wire_assign2 can also be used as a module
//
module wire_assign3( in ) return out2;
endmodule
