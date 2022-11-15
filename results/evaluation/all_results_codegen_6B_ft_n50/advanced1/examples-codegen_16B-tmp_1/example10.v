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


wire a_b_s_stream_overflow;
wire signed a_b_s_overflow;
assign a_b_s_overflow = (~a[7]) & (~b[7]) & s[7];
assign overflow = a_b_s_overflow | a_b_s_stream_overflow;
assign s[7] = (~a[7]) & (~b[7]) & (a[7] ^ b[7]);


always @ (*) begin
	if (a[7] == b[7]) begin
	//////////////////////////////////////////// check for the most significant bit /////////////////////////////////
	// both bits that determine if s is signed or not are high, then the output should be signed
	// for example if a is 128 and b is 255 then the sum should output -127
	if (((a[7] == 1'end
end
endmodule
