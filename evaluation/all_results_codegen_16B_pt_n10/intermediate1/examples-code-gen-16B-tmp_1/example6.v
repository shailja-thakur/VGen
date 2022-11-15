// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire c1;

inv1 inv1_inst( a, c1 ); // instantiate the first inverter.
inv1 inv2_inst( b, sum ); // instantiate the second inverter.


or u13(cout, a, b /* inputs */ ); // U13, a 3-input OR gate

endmodule
