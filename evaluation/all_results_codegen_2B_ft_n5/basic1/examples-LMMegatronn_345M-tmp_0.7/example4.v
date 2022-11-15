// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = ~( in & ~in ) | (~ in & in_n);
endmodule
