// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// a and b are inputs.
// sum is output.

// Create wires to connect the half adder two flops.
wire w1, w2, w3;

// Create the half adder.
half_adder_1bit h1( a, b, w1, w2 );
half_adder_1bit h2( w1, w2, sum, w3 );
assign cout = w3;

endmodule
