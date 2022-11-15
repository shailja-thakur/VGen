// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// And a half subtractor with a carry-out. An subtractor subtracts two values and
// produces a sum and carries-out.
module half_subtractor( 
input a, b,
output cout, sum );

module make_adder( source src1=arbitrary_ext_reg(4), src2=arbitrary_ext_reg(4) );
	func make_adder();

module make_half_adder( source src1=arbitrary_ext_reg(4), src2=arbitrary_ext_reg(4) );
	func make_half_adder();

module make_subtractor( source src1=arbitrary_ext_reg(4), src2=arbitrary_ext_reg(4) );
	func make_subtractor();

ends = make_half_adder( );

endmodule
