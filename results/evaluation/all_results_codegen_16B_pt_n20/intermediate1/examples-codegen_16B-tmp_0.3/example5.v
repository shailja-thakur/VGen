// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Inputs
a <= a + b + 1'b0;
b <= a + b + 1'b1;

// Outputs
cout <= sum;
sum <= a + b;

endmodule
