// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire cin, cout;

// The input is a 4-bit number.
assign a = cin;

// The output is a 4-bit number.
assign b = cin;

// The sum is a 4-bit number.
assign sum = cin;

// The carry-out is a 1-bit number.
assign cout = cin;

// The carry-in is a 1-bit number.
assign cin = cin;

// The four bits are added together and the sum and carry-out are added together.
assign sum = a + b + cout;

// The carry-out is added to the sum.
assign cout = sum + cin;

endmodule
