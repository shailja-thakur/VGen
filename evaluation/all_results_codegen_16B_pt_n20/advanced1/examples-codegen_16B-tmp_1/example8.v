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


// Let us initialize the registers:

reg [8:0] r; small index for zeroes 
reg [7:0] s; small index for ones 
bitset [7:0] a0 = 0
bitset [7:0] b0 = 0
bitset [7:0] p	= 0
bitset [7:0] n 	 = 0


// we are merging small indexes with match operation 
// another compiler   /   other  straight line 
#3 start; 
s0 = a0 + b0; 
#6 if (s0 != 0) 
if (s0[7]) 
#7 if (s0[6]) 
#8 if ((s0[5]) || (s0[4])) 
#9 if (s0[3]) 
#10 if (s0[2])endmodule
