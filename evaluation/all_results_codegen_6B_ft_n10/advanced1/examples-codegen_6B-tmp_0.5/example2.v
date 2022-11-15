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


wire signed [7:0] b_signed [0:7];

// this array holds the values of b after the most significant bit is replaced with a signed high bit
// this is the b that will be added to s

generate
	genvar i; // used to iterate over the bits of b
	for (i=0; i<8; i=i+1)
	begin
	//make a copy of b with the most significant bit replaced with a signed high bit
	//this is the b that will be added to s
	assign b_signed[i] = b[i] ? 8'hff : 8'h00;
	//if the bit is a signed high bit, add it to the sum
	//if the bit is a signed low bit, subtract it from the sum
	if (b_signed[i])
	begin
	s[end
end
endmodule
