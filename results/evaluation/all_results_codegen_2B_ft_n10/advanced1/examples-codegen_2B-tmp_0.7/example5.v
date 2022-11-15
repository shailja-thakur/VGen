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


// Initialize the output s
// Initialize the output overflow
// Use two half adders
// Use three full adders

wire [5:0] intermediate_carry;
wire signed [7:0] intermediate_add1;
wire signed [7:0] intermediate_add2;
wire signed [7:0] final_add;
wire [7:0] final_sum;
wire overflow;

// Intermediate carry
// Intermediate adder 1
// Intermediate adder 2
// Final adder
// Final sum

half_adder u0(a[0], b[0], intermediate_add1[0], intermediate_carry[0]);
half_adder u1(a[1], b[1], intermediate_add1[1], intermediate_carry[1]);
half_adder u2(a[2], b[2], intermediate_add1[2], intermediate_endmodule
