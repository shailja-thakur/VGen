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


// if a and b are both negative and their sum is negative, s is negative and the carry is 1.
// if a and b are both negative and the sum is positive, s is positive and the carry is 0.
// if a and b are both positive and the sum is negative, s is negative and the carry is 0. 
// if a and b are both positive and the sum is positive, s is positive and the carry is 1. 

	
wire [8:0] c; //the carry out bit of the adder

//Take a and b and add the 1 bit carry in to get the final carry out bit
fulladder f0(.a(a[0]), .b(b[0]), .c_in(1'b0), .s(s[0]), .c_out(c[0]));
fulladder f1(.a(a[1]), .endmodule
