// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
	half_adder_gate a1 (a, b, w1, w2);
	half_adder_gate a2 (w1, w2, cout, sum);
endmodule
