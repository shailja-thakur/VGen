// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


*/

#include "avr.h"
static const uint64_t mask = (uint64_t)-1LL;

static int64_t __attribute__((noinline)) 
     gcd_core(unsigned int a, unsigned int b)
{        
	int64_t m = a*b;
	unsigned int m1 = m&mask;
	if (m1) {
		if (!(b & m))
			return m; /* gcd is not 1, return mask instead */
		while (--a) {
			m -= a*b;
			if ((m&mask)) { if (!(b & m)) return m; /* gcd is not 1, return mask instead */ }
		}
	}
	return m;
}

// for troubleshooting
int64_t
#pragma GCC diagnostic ignored "-Wsendmodule
