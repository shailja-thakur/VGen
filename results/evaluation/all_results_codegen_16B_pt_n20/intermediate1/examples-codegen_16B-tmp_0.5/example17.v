// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a, b, cin, sum;

// The inputs are connected to the half adder.
a <= b;
b <= cin;

// The outputs are connected to the sum and carry-out.
cout <= sum;
sum <= a + b;

endmodule
