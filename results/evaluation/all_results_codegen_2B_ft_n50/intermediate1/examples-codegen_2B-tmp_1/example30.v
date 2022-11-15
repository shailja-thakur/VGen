// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire cout0;
wire sum0;
halfADD half_adder_0(a, b, cout0, sum0);
halfADD half_adder_1(cout0, 1'b0, cout, sum);
endmodule
