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

	reg signed [8:0] c; // used in intermediate calculations
	reg signed [8:0] v; // enables detectable overflow
	reg of;
	reg [7:0] a_b; // stores when the MSB of a and b are at 0 and 1.
	wire signed [7:0] b2; // stores a's 2s's complement of b
	reg [7:0] neg_b2; // stores the result of ~(b)
	reg [9:0] zero_to_255_signed; // provides 1 extra bit to store the MSB of b, depending upon which of its values, it will hold the value 1 or 0.
	wire signed [8:0] out_to_add; // outputs of the adders 
	wire extended_carry_wire; // outputs of the additional adder to check for overflow
	wire signed add_endmodule
