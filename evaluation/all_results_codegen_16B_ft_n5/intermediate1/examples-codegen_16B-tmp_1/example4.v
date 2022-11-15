// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire c, d, e;

// Four full adders combined together into one 4-input 2-output adder
fulladder fa0 ( a, b, 1'b0, 1'b0, sum, c );
fulladder fa1 ( a, b, c, 1'b0, d );
fulladder fa2 ( a, b, 1'b0, c, e );

// Output assignment
assign cout = c | d | e;

endmodule
