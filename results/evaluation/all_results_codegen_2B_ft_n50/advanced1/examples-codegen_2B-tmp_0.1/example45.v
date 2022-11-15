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


// The output s is the sum of a and b. 
// The output overflow is the signed overflow of a and b. 
// The output overflow is high if there was a signed overflow. 
// The output overflow is low if there was no signed overflow. 

// The addition is performed using the Verilog + operator. 
// The addition is performed on two 8-bit numbers. 
// The addition is unsigned. 

// The overflow is high if the sum of the two numbers is larger than the largest possible 8-bit number. 
// The overflow is low if the sum of the two numbers is smaller than the smallest possible 8-bit number. 

// The output overflow is high if the sum of the two numbers is larger than the largest possible 8-bit number. 
// The output overflow is low if the sum of the two numbers is smaller than the smallest possible 8-bit number.endmodule
