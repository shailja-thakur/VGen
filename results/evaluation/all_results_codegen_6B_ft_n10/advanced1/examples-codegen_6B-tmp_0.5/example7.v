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



// if a or b is negative, the sum may or may not be negative
// the sum is casted to a signed type to check if the sum is negative or positive

wire signed [7:0] casted_sum;

// if the most significant bit of a or b is high, the sum is negative
// if the sum is casted to a signed type, it will become negative if the most significant bit is high

assign casted_sum = a + b;

assign s = (casted_sum[7] == 1'b1) ? ~casted_sum + 1'b1 : casted_sum; // if the sum is negative, the most significant bit is high

// if the sum is positive, the most significant bit is low
// if the sum is casted to a signed type, it will become positive if the most significant bit is low

assendmodule
