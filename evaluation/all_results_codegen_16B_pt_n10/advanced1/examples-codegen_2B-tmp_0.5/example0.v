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


// if a or b is negative, the adder will add the absolute value of the input to the output.
// if a or b is zero, the output will be zero.
// if a or b is positive, the output will be the sum of the two inputs.

wire [7:0] sum;
wire [7:0] carry;

assign sum = a + b;

assign carry[0] = 1'b0;

// The carry output line carry[1] is used to calculate the overflow.
// The overflow is set to one if the sum of a and b is greater than the sum.
assign overflow = carry[1] & (sum[7] ^ carry[0]);

// The carry output line carry[2] is used to calculate the overflow.
// The overflow is set to one if the sum of a and b is greater than the sum.endmodule
