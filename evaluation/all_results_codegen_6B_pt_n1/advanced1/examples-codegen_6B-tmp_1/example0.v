// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


ax <= 0 => ax <= 0
bx <= 0 => bx <= 0

sx <= 0 => sign(sx) = sign(ax) xor sign(bx)
from_carry(ax, ax) and ~from_carry(ax, bx) --> carry(ax) xor from_carry(ax, bx)
add(ax, bx[7:0]) --> sx[7:0]

path1: sx[7:0] = ax[7:0] + bx[7:0]
carry(ax) = carry(ax) xor sx[7:0]
sx[7:0] = ax[7:0]
0 <= sx[7:0] < 2**8 - 1
-- There was no overflow when path1 is compiled

ifcarry(ax, add(ax, bx[endmodule
