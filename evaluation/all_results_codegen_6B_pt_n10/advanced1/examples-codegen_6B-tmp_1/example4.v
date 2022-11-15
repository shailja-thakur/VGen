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


always @(posedge clk or negedge rst) begin
    if (rst == 1) begin
    	s <= 0;
    	overflow <= 0;
    end else
	a <= a + 32; // only apply each 32p adder symbol once
	b <= b + 32;
	if ((signed_a > 32767) || (signed_a < -32768) || (signed_b > 32767) || (signed_b < -32768)) {
		signed_adder_logic = 1;
	}
	else {
		signed_adder_logic = 0;
	}
	if (signed_adder_logic) {
		if (signed_a >= 32767) { // constrain a
			signed_a -= 32768;
		}
		if (signed_a <= -32768) { // constrainend
endmodule
