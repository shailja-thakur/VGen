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

 assign overflow = a[7] & b[7] & ~ s[7]; 

// Add the a and b making a 7 bit adder a[7:0]a;
 

// if there is a processing overflow the set the overflow output to true otherwise inout indicate no overflow so out =in.

 // assign s = a + b;
 endmodule
 

// Design a 1 bit adder, a[0]
 // out = sum of a and b; Bidirectional counter is synthesizable
 // This is used to add 1 bit in the case of rest, parity, zero check adder.
 // Carry out, carry only is processed
module Lab5Part2(


endmodule
