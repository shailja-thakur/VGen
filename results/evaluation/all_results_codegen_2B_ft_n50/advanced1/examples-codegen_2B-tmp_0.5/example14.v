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



wire [7:0] carry;
wire signed [8:0] sum;
wire [7:0] sign;

//carry is the carry of the adder
//sum is the sum of the adder
//sign is the sign of the sum

//initialize carry
assign carry[0] = 1'b0;

//sum is the result of the adder
//sign is the sign of the sum

//always @(*)
//begin

//if a is negative and b is positive, then the sum is positive
//if a is positive and b is negative, then the sum is negative

//if a and b are equal, the sum is zero

//if a is zero and b is positive, then the sum is negative

//if a is positive and b is zero, then the sum is zero

//end

//assign sum =endmodule
