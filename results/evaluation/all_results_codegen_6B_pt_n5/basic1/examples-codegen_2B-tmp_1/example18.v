// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// Lets just use normal assignments
// First unchanged o is unchanged
// Assignment "0" is just zero
//printf( "0 = %lld\n", 0LL);
// In the case where the output is not modified
// Writing a correct assignment is not just a one line assignment. Leo wants to be able to pull in
// multiple modules. To do this you just delete the source file while it's compiling and have a node
// used as a flag. So this requires some type of logic then. I will refine that part in the future.
endmodule
