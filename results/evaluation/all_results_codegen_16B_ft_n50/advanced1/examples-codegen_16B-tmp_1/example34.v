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

	wire flag_in_most_sig_mul;	
	wire [3:0] unsigned_sum4,unsigned_sum3,unsigned_sum2,unsigned_sum1,unsigned_sum;
	wire signed_overflow_most_sig_mul;
	wire signed_overflow1,signed_overflow2,signed_overflow3,signed_overflow4;
//add all bits of a with flipped most sig bit of b to sum
	assign unsigned_sum4 = (b[7]?~a[7:0] + 1'b1:a[6:0]) + (b[6]?~a[7:0] + 1'b1:a[5:0])+ (b[5]?~a[7:0] + 1'b1:a[4:0])+ (b[4]?~endmodule
