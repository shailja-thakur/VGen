// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
function wire_assign( input in, output out ) {
  out = in; // write a message to "out" that mentions "in" (the pointer goes from the argument name to the destination-only variable)
}
 endmodule
endmodule
