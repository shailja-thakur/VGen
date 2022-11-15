// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire c0, cout0, sum0;
xor (cout0,b,a);
compab (sum0,a,b);
or (cout,cout0,sum0);
endmodule
