// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a not gate. A not gate inverts the bit inputted.
// I also used this as a control gate, which is a gate with no 
// inputs and one output. This is a pretty common structure. 
// It allows you to have a wire (cout) and a wire (sum) with sharing 
// in only one place.
not n1( w1, a );
xor x1( sum, b, w1 );
and a1( cout, a, b );

endmodule
