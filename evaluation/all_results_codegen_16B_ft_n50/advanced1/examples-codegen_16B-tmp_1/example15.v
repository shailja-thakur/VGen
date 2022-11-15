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

	always @ (a, b) begin
	
// Stage 1

	// Subtract b from a. A is the original adder input value and B is the subtraction of that from what is already on s.

	assign A1 = a[0] ^ b[0]; //learned
	assign B1 = a[0] & b[0];
	assign C1 = a[1] & b[1];
	assign D1 = a[1] ^ b[1];

// Stage 2

	assign E1 = C1 ^ D1;
	assign F1 = C1 & D1;
	assign G1 = A1 & E1;
	assign H1 = A1 ^ E1;

// Stage 3

	// Left-shift A: |A|88307 -> left 7 places. (10000000 -> assignend
endmodule
