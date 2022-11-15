// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire w1, w2, w3, w4;
xor xorHalf1(a, b, w1);
xor xorHalf2(w1, b, w2);
xor xorHalf3(a, w2, sum);
and andHalf1(w1, w4, w1);
and andHalf2(w2, w5, w2);
or orHalf1(w4, w1, w2, w3);
or orHalf2(w5, a, b, w4);
xor xorHalf4(w3, b, w6);
xor xorHalf3(w6, b, cout);
endmodule
