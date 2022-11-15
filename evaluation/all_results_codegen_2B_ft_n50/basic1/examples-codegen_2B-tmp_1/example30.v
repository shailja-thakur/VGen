// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
//Wire encapsulation: Output is latched only when input islattached
assign out=in;
endmodule
