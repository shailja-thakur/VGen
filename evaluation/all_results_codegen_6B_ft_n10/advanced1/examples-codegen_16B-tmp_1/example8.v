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

	addsub_1bit addsub1(.cout(carry[0]), .overflow(overflow), .a(a[0]), .b(b[0]), .x(1'b0), .s(s[0]));
	
	genvar i;	
	generate for (i=1; i<8; i = i+1) begin: addbit
	addsub_1bit addsub(.cout(carry[i]), .overflow(overflow), .a(a[i]), .b(b[i]), .x(carry[i-1]), .s(s[i]));
	end endgenerate

endmodule
