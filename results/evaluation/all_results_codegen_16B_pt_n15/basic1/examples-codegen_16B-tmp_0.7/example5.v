// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( input in, output out ) {
out = in;
}
// Design a module that compares the two inputs and assigns the output to
// either 0 or 1.
module comp( input A, input B, output out );
// Compare A and B and assign out to 0 or 1
comp( A, B, out ) {
if (A > B) {
out = 0;
} else {
out = 1;
}
}
// Design a module that adds two inputs together and assigns the output to
// the value of the two inputs.
module add( input A, input B, output out );
// Add A and B and assign out to the result.
add( A, B, out ) {
out = A + B;
}
// Design a module that adds one input to another and assigns the output
// value to the sum of these two inputs.
moduleendmodule
