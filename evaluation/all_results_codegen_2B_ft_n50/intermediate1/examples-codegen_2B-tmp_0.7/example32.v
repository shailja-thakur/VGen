// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire w1, w2;
xor G1(w1, a, b);
and G2(w2, a, b);
or G3(sum, w1, w2);
and G4(cout, w1, w2);
endmodule
