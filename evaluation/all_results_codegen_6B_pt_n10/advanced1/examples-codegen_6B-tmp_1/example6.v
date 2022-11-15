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


// TODO: Implement unsigned_adder module. 






#define unsigned_add_low            { unsigned a = binary_to_integer(a); unsigned b = binary_to_integer(b); unsigned result = a + b; if (result >> 8 != a || result >> 8 != b) overflow = 1;    return integer_to_binary(result); }
#define unsigned_add_high            { unsigned b = binary_to_integer(b); unsigned a = binary_to_integer(a); unsigned result = a + b; if (result >> 8 != a || result >> 8 != b) overflow = 1;    return integer_to_binary(result); }
#define unsigned_add_high_low        { unsigned a = binary_to_integer(a); unsigned b = binary_to_integer(b); unsigned result = a + b; if (result >> 8 != a ||endmodule
