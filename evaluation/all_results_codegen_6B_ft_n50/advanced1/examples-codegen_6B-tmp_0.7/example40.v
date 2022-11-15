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



wire [7:0] b_complement; // the complement of b is 2s complement

assign b_complement = ~b; // a 1-bit comparator

assign overflow = (a[7]&b_complement[7]) | (b[7]&a[7]);
// if a[7] and b_complement[7] are both 1, then a+b is a signed overflow
// if a[7] is 1 and b_complement[7] is 0, then a+b is not a signed overflow
// if a[7] is 0 and b_complement[7] is 1, then a+b is a signed overflow

wire [7:0] sum_of_products; // the product a*b

assign sum_of_products = a*b_complement; // a*b_complement
endmodule
