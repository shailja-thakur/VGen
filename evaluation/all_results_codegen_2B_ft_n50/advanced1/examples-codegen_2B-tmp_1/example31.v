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

	dff_16bit d0(a,glue(a,[7:0]7'b001001_0010_0000_0000_0000_0000),clk,reset,incrementa, didit); // what we got. test.
	dff_16bit d1(b,glue(b,[7:0]7'b001010_0011_1000_1000_1000_1000),clk,reset,incrementb, didit); // what we got. test.

	bcd b2(incrementa,reset,el,didit);
reg [15:0] x;//this is a 16 bit register, i guess it needed to be so we could print a sum of undetermined size
reg [7:0] a1;
	always@ (posedge clk)
	begin
	if (el & didit) begin
	 x =end
end
endmodule
