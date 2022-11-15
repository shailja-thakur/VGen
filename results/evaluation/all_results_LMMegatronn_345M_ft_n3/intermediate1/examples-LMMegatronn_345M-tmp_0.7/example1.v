// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 
wire [31:0] a, b;

xor (sum[0], a[0], b[0], 1'b0);
xor (sum[1], sum[0], sum[1], sum[2]);
xor (sum[2], sum[1], sum[2], sum[3]);

and (b[0], a[0], b[0]);
and (b[1], a[1], b[1]);
and (b[2], a[2], b[2]);
and (b[3], a[3], b[3]);
and (b[4], a[4], b[4]);
and (b[5], a[5], b[5]);
and (b[6], a[6], b[6]);
and (b[7], a[7], b[7]);
and (b[endmodule
