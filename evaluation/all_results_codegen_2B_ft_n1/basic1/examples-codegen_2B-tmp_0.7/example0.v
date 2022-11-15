// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;

// Design a module that computes the sum of a and b
// Module needs 3 inputs and 1 output
module wire_comp_sum( input a, b, c_in, output sum, c_out );
// connect output to input
assign sum = a + b + c_in;
// assign the output to the carry
assign c_out = (a + b + c_in) % 2;

endmodule
