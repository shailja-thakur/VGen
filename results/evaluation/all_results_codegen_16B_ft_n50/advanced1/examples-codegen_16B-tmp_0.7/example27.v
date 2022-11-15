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


reg [8:0] s_temp;

always @(*)
begin
	if ({a[7], b[7]} == 2'b00)
	begin	
	if ({s[7], s_temp[8]} == 2'b10)
	begin
	s_temp[8] <= 1'b1;
	s_temp[7:0] <= s_temp[7:0] + 1'b1;
	end 
	
	else s_temp[8] <= 1'b0;
	
	s_temp[7:0] <= a[7:0] + b[7:0];
	s <= s_temp[7:0];
	end
	
	else if ({a[7], b[7]} == 2'b01)
	begin
	s_temp[8] <= 1'end
end
endmodule
