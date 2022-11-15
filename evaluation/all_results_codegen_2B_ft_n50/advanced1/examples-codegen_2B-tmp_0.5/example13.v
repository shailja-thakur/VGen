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

wire signed [7:0] s_wire;
wire overflow_wire;

// Create a 7-bit ripple adder with the correct sign of a and b.

ripple_adder_8b adder_1(a[7:0], b[7:0], 1'b1, s_wire[7:0], overflow_wire);

// Create a 7-bit ripple adder with the correct sign of a and b.

ripple_adder_8b adder_2(a[7:0], b[7:0], 1'b0, s[7:0], overflow_wire);

// Create a 7-bit ripple adder with the correct sign of a and b.

assign s = s_wire;endmodule
