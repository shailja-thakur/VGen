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



// if a[7] is high then the most significant bit of a is high and the most significant bit of b is low. 
// if b[7] is high then the most significant bit of b is high and the most significant bit of a is low. 

// if a[7] is high then the most significant bit of a is high and the most significant bit of b is low. 
// if b[7] is high then the most significant bit of b is high and the most significant bit of a is low. 

assign s = {a[6:0], b[6:0]}; // Concatenate the two numbers in the 7-digit output. 
assign overflow = a[7] & b[7]; // Check if the most significant bit of a and b is high. 

endmodule
