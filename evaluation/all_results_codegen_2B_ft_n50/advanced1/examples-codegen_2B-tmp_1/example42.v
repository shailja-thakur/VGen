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


wire [7:0] a_out;
wire [7:0] b_out;
reg [7:0] s = 8'b00000001;

adder add_1 (a, b, a_out, b_out);
always@*
begin
if(a_out > 8'b00000001)
	begin
	s = s + 1;
	end
else if(a_out < 8'b00000001)
	begin
	s = s - 1;
	end
	
end
// Connect the salphas with the adder
assign s = a_out + b_out;

endmodule
