// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign_lvalue( out, in );
// each call to two wires makes a new wire
void two_wires() { }
// Design a module that computes the product of two numbers
module number_product( input a, input b, output product );
// Assign the output to the product
assign_lvalue( product, a * b );
// each call to two numbers makes a new product
void two_numbers() { }
// Design a module that performs a direct assignment to a quad_float
// variable
module quad_float_assign( input a, output quad_float );
// Assigns quad_float c to a
assign_lvalue( quad_float_assign( a, c ), c );

// Design a module that performs a direct assignment to a network dequeue
// ----------------------------------------------------------------
// wire_assign_dequeue( container, number_indendmodule
