// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
//Declare variables
reg x, y, z;
//Store the three bit inputs
assign sum = x ^ y;
//xor the two 3-bit numbers using UDP
assign cout = x & y;
//AND gate using UDP
assign z = a & b;
//assign the sum and carry according to the equation
always @ (z or cout)
begin
	x <= z;
	y <= cout;
end
	
endmodule
