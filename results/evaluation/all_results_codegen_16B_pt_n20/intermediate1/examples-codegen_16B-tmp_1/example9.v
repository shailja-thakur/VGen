// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout;
output sum;

always #(1) begin
	if (a)
		sum = 1, cout = a;
	else if (b)
		sum = 0, cout = 1;
	else
		sum = 1, cout = 0;
end

///////////////////////////
// suffix code for half adder
endmodule
