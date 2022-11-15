// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign sum{ 0.5 * a + 0.5 * b }, sum_c;
assign cout{ a + b }

negate{ sum }( cout_ )

inc{ sum_c } on sum a', b' {
  sum_c{ = apply { sum_ }( a, ~b ) }
}
	endif 

//--- SIG_COMM_END ---
endmodule
