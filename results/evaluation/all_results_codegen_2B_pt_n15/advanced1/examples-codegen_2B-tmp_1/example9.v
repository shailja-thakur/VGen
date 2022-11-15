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


wire S[8];

wire overflow;

// XOR a and b
wire overflowb = ~a & b & ~s

// Signature factor ? ???
input bit overflowf;

reg [15:0] ar2, ar1, barg
;

assign ar2 = (a[3:0] << 4) + (a[4:0] << 4)
, the transition is predictable if S[2:0] = ar2
, so we use only a special case: ar2 = 0, then we can skip ar1

// Split in some mess ? ? 
assign ar1[7:4] = s[1:0]
, ar1 = s[0]
, read the two integer, thanks XMB... 
// XMB:
// 09 09 09 00 01
// 09 09 02 02 03 04 05 06 07 08
//endmodule
