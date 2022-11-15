// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign #(32,32) asgn1 (in, out);
endmodule
