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


//assign s[7] = a[7] ^ b[7] ^ s[7]; //this will check if any of the most significant 4 bits are 1 and if any of the 1 val we kept track of in previous frames we set flag high only in that case

always @(s, a, b)
begin
	case(s[7])
	1'b0: if(a[7])overflow = 1'b1;
	1'b1: if(b[7])overflow = 1'b1; //to check for signed overflow.
	endcase	
end

endmodule
