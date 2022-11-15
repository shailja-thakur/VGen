// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

begin
  sum = 0;
  if (a > 0) cout = 1;
  if (a > b) cout = 1;
  sum = a + b;
  cout = sum + (sum >> 1);
end

-------------------------------------------------------------------------------------
*/

#include <iostream>
#include <cstdlib>
#include "adder.h"

using namespace std;

Adder::Adder( )
{
	// Initialize the output, the sum, and the carry-out.
	sum = 0;
	carry_out = 0;
	output = 0;
}

void Adder::init_adder( 
	unsigned int a, 
	unsigned int b, 
	unsigned int& sum, 
	unsigned int& output, 
	unsigned int& carry_out )
{
	// Initializeendmodule
