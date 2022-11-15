// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
half_adder(0,1,cout,sum);
half_adder(1,0,cout,sum);
half_adder(1,1,sum,cout);
endmodule
