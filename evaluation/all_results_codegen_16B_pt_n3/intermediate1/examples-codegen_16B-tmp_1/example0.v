// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a;
input b; 
output cout;
output sum; 

// Wire the outputs
sum = a + b;
cout = sum > 0;

endmodule
