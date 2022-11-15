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


assign s[0] = a[0] ^ b[0]; // If a or b are zero, then a - b will be zero so we want to leave the output as zero

reg signed [7:0] s_temp = 0; // Declare a temporary for storing the sum of a and b
reg overflow = 0; // Declare a temporary for storing the overflow of a and b
reg [7:0] a_high, b_high; // Declare three regs for high and low order bits of a and b
reg [7:0] a_low, b_low; // Declare two regs for low order bits of a and b


always @ *
begin

a_high = a[7]; // Assign high order bits of a to high order bits of a_high
a_low = a[6:0]; // Assign low order bits of aend
endmodule
