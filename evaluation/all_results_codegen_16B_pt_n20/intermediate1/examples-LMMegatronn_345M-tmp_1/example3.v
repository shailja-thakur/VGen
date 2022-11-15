// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire c1, c2;
xor (c1, a, b);
xor (c2, a, b);
and (c, a, c1);
and (c3, a, c2);
or (c4, in1[3], c3); 
and (cin, sum[3], cout);
xor (c5, in1[4], carry_out);
and (c6, in1[5], sum[4]);
and (c7, in1[6], sum[5]);
and (c8, in1[7], sum[6]);
or (c9, in1[8], cout_out);
and (c10, in2[9], carry_out);
and (out, sum[9], cout_out);
or (c11, out[10], c4); 
and (out,endmodule
