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

	assign overflow = (~a[7] & b[7] & ~s[7]) | (~a[7] & b[7] & s[7]) | (a[7] & ~b[7] & s[7]);


// Design an 8-x1 mux with signed select.
// When you select a negative number, a positive number is output.
// When you select a positive number, a negative number is output.

module mux
(
	input select,
	input [7:0] input_to_mux,
	output reg [7:0] output_of_mux
);
always @* 
	begin 
	case(select)
	0: // Positive number selected
	begin
	output_of_mux <= input_to_mux;
	end
	1: // Negative number is selected
	beginend
end
endmodule
