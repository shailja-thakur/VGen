// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

/*

input:

a = first input (possible range from 0 to 255)
b = second input (possible range from 0 to 255)

output:

cout = sum of a+b (possible range from 0 to 255)
sum = sum of a and b (possible range from 0 to 255)
carry = carry out for sum of a and b (possible range from 0 to 1)

*/

void half_adder::execute()
{
    // put your code here
	sum.write(a+b);
	carry.write(sum<a+b ? 1 : 0);
	cout.write(sum);
}
endmodule
