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

 always @(posedge clk) // on rising edge of clock generate the sum by scanning through the bits
	if (state) {	
		s <= (((a.range(63,0) - b.range(63,0) - 1) +  1) & intbv(0, bitsmax+1)).range(7,0);
		overflow <= (((s ^ a.range(63,0)) - b.range(63,0) - 1) & intbv(0, bitsmax+1)).range(7,0);
	}

endmodule
