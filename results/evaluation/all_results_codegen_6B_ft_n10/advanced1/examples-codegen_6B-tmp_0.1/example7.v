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


wire signed [7:0] b_signed = {b[6:0],b[7]};

wire signed [7:0] sum_signed;

// perform the unsigned addition
adder add1(a,b_signed,sum_signed,overflow_unsigned);

// if the output is a signed number, then we perform the signed addition
wire signed [7:0] sum_signed_final;
wire signed [7:0] b_signed_final;

if (sum_signed[7] == 1'b1) begin
	assign b_signed_final = ~b_signed+1;
	assign sum_signed_final = sum_signed[7]*b_signed_final+sum_signed[6:0]*b_signed;
end
else begin
	assign b_signed_final = b_signed;
	end
endmodule
