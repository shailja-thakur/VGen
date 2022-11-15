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


// For each adder, a full adder is created on the inputs. The output from each adder is added to the output.
// The output of the full adder is also added to the output.

wire signed [7:0] a_minus_b;
wire signed [7:0] s_minus_b;
wire [7:0] sum_minus_b;

wire signed [7:0] a_plus_b;
wire signed [7:0] s_plus_b;
wire [7:0] sum_plus_b;

wire signed [7:0] a_minus_b_minus_s;
wire signed [7:0] s_minus_b_minus_s;
wire signed [7:0] sum_minus_b_minus_s;

wire signed [7:0] a_plus_b_plusendmodule
