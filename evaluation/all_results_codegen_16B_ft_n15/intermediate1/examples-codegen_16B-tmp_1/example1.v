// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
not( ain, a );
and(bin, ain, b);
or(cout, bin, reg_a);
and(join, reg_a, b);
reg reg_a;
always @ ( b or join )
begin
	if ( reg_a == 1'b0 )
	begin
	reg_a <= 1'b1;
	end
	else
	begin
	reg_a <= 1'b0;
	end
end
endmodule
