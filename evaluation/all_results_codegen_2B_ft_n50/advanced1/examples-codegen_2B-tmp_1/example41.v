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


reg [7:0] b_comp;
assign b_cmp = ~b + 1'b1;
always @ (a or b or b_comp)
	begin:s_add
	wire [8:0] sum ;
	
	assign sum[0] = ~a[0] + 1'b1;
	assign sum[1] = ~a[1] + b[0];
	assign sum[2] = ~a[2] + b[1];
	assign sum[3] = ~a[3] + b[2];
	assign sum[4] = ~a[4] + b[3];
	assign sum[5] = ~a[5] + b[4];
	assign sum[6] = ~a[6] + b[5];
	assign sum[7] =end
endmodule
