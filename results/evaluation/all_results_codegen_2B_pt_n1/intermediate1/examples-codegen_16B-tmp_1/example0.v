// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

/* write your code here */
wire w1;
wire w2;
xor(w1, a, b);
xor(sum, w1, cin);
and(cout, w1, cin);
endmodule
