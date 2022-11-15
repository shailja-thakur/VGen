// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always #( .INIT = 4'b0 ) begin 
	cout = a + b;
end

always #( .INIT = 4'b0 ) begin 
	sum = a + b + 1'b1;
end
endmodule
