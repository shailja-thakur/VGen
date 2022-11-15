// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
let sum_reg = a + b;
begin
	if ( ((sum_reg & 0b11110000) <= a) && ((sum_reg & 0b00001) != 0) )
		cout <- '1';
	else
		cout <- '0';
	sum <<= 1;
	sum_reg <<= 1;
end
a <<= 1;
b <<= 1;
sum <<= 1;
assert(_trace_memory( sum_reg, 8 ));
endmodule
