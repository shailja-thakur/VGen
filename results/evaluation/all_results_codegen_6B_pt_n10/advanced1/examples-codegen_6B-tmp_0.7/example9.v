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


// The highest bit of a and b is high and the highest bit of s is low
overflow <= a[7] and b[7] and s[7] = '1'

// The highest bit of a and b is high and the highest bit of s is low
overflow <= a[6] and b[6] and s[6] = '1'

// The highest bit of a and b is high and the highest bit of s is low
overflow <= a[5] and b[5] and s[5] = '1'

// The highest bit of a and b is high and the highest bit of s is low
overflow <= a[4] and b[4] and s[4] = '1'

// The highest bit of a and b is high and the highest bit of s is low
overflow <= a[3] and b[3]endmodule
