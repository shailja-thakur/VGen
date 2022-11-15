// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
and (w1, a, b);
and (w2, b, cin);
or (cout, w1, w2);
xor (sum, a, b, cin);
endmodule
