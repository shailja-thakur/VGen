// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @( posedge a or posedge b ) begin
	if ( a or b )
	begin
		sum <= a + b;
	end
	else
	begin
		cout <= sum;
	end
end

// This is a full adder. A full adder adds four bits and produces a sum and carry-out.
module full_adder(
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @( posedge a or posedge b ) begin
	if ( a or b )
	begin
		sum <= a + b;
	end
	else
	begin
		cout <= sum;
	end
end

// This is a half subtractor. A half subtractor subtracts two bits and produces a differenceendmodule
