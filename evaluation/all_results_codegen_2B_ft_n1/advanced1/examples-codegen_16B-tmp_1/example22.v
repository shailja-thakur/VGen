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

	assign s = a + b; 

	assign overflow = (a[7]==~b[7] && a[3]==~b[3] && a[2]==~b[2] && a[1]==~b[1] && a[0]==~b[0]) 
	 	|| (a[7]==~b[7] && a[3]==~b[3] && a[2]==~b[2] && a[1]==~b[1] && a[0]==b[0]) 
	 || (a[7]==~b[7] && a[0]==~b[0]) || (a[7]==b[7] && a[0]==0); //an unsigned overflow has occured as the result of 2's complement
 


endmodule
