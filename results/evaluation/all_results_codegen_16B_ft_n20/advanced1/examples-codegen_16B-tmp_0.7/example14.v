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


// You may need to use a different data type for the output overflow. 
// ufix8 is one way to go. You may need to use a larger data type to hold the overflow. 
// You may need to use a different method to check for an overflow. 

// R-Type adder

// add and subtract are designed to add or subtract two values. 
// You can't add or subtract two signed values so use an unsigned adder for that. 

// R-Type Adder/Subtractor 

// Design a 4-bit adder/subtractor using the previous adder design. 
// It should have two modes: add and subtract. 
// When the mode is add, the output is the sum of two inputs. 
// When the mode is subtract, the output is the difference of two inputs. 
// For the 4-bit adder, thereendmodule
