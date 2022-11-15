// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// 
wire a0, a1, b0, b1, c0;
//
// The carry-out is calculated by using two half adders.
//
// The input of each half adder (a and b) must be 1.
//
half_adder HA1 (a0, a1, b0, b1);
half_adder HA2 (a0, a1, c0, sum);

// 
// This is the carry out.
//
assign cout = c0;
//
endmodule
