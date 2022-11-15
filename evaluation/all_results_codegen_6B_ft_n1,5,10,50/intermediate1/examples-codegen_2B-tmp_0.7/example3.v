// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the main function. We have to define a bit-reverse with a single bit at the end.
// This is because we want the last bit to be the carry-out even if the number of bits
// in the input is even.
module main ( 
input [b:0,8] a,
output b,
output cout, sum)
{
    sum = a[7] + a[6] + a[5] + a[4] + a[3] + a[2] + a[1] + a[0];
    cout = sum & 1;
}

*/

#include <iostream>
#include <cstdlib>

using namespace std;

int main()
{
	int a = rand() % 128;
	int b = rand() % 128;
	int sum = a + b;
endmodule
