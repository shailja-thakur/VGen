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


wire signed [7:0] b2; // stores the 2s complement of b

assign b2 = ~b; // 2s complement of b

// adds a and b2, or a and b if they are equal, otherwise subtracts b2 from a
assign s = a + b2 + ((a[7] & b2[7]) ? 1:0); //s is the 2s complement of s

assign overflow = ((a[7] & b2[7]) ? 1:0) & (a[6:0] + b2[6:0] > 7);
//overflow is high when a and b are signed and the 2s complement of a or b is greater than 7
endmodule
