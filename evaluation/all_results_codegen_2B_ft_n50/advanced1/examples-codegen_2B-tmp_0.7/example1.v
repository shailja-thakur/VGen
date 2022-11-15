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


// Implement the following function:
// signed_adder s_add(a, b, s, overflow);
// In this case, the output of the function should be a 8-bit two's complement number.

// The function is called only once at the start of the computation

// Define the following function for the overflow:
// output overflow;
// In this case, the output of the function should be a 1-bit boolean.

// Implement the following function:
// unsigned_adder u_add(a, b, s);
// In this case, the output of the function should be an 8-bit unsigned number.

// The function is called only once at the start of the computation

// Define the following function for the overflow:
// output overflow;
// In this case, the output of the function should be a 1-bit boolean.

// Create a module named testerendmodule
