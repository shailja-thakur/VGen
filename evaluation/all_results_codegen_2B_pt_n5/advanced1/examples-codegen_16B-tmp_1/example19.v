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

	// {MSB(a), a[7:1]} + {MSB(b), b[7:1]} = {MSB(s), s[7:1]}

	 // 2's complement adder-subtractor 'overflow' detection circuit
	wire overflow_adder;
	assign overflow_adder = (a[0]^~b[0]);
	
	//{MSB(a),a[7:1]} + {MSB(b), b[7:1]} = {MSB(s), s[7:1]}
	// ignore overflow when assigning s to prevent transmission of an incorrect value.
	assign s = (overflow_adder == 1) ? (a+b) : (~a+b+1);	
	assign overflow = (s==0) ? overflow_adder:1'bz;
	

endmodule
