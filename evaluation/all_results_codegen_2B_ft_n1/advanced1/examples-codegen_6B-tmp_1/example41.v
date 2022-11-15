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



// First add the 2's complement of the negative numbers
// ( result of tausworthe algorithm )

adder_2c add1(.a(a), .b(~b), .s(s1), .c(c1));
// Now add the two numbers, s1 = s + a)
adder_2c add2(.a(s1), .b(a), .s(s), .c(c2));
// assign the final result of the operation to s
assign s = s1 ^ c1 ^ c2;

assign overflow = c1 ^ c2;

endmodule
