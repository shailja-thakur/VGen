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


wire signed [7:0] b_not; //stores the 2's complemented value of b

assign b_not = ~b; //2's complemented value of b

always @(*) begin
	if(a[7] == b_not[7] && a[7] == s[7]) //check if the most significant bit of a is high and that the most significant bit of s is low
	begin
	overflow = 0; //set the overflow to 0 if the numbers are within the signed range
	end
	else if(a[7] == b_not[7] && a[7] == ~s[7]) //check if the most significant bit of a is low and that the most significant bit of s is high
	begin
	overflow = 1; //set the overflow to 1 if the numbers are outside the signed range
	end
end

endmodule
