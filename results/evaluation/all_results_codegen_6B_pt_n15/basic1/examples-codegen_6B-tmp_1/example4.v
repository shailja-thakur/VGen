// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out = in;

// Design and implement a function that returns the element-wise product
// of two arrays.
// return out = {A[a] x B[b]}, with A[a] x B[b] = A[a] x B[b]
int multi_tensor_product(int *A, int *B, int *C);

module mult = wire_assign(simple_A, simple_output_A);
function mult_line( C, C_hook );
function mult_inline( C, C_hook );

/* * '* '* */

module mult_binary =
  #(4,9) <2> simple_A, simple_output_A [A,A] -> mult(4,9,4,9,9);
  //4<2>simple_A, mult_out[4,9,4endmodule
