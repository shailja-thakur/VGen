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


wire signed[6:0]	intermediate1;
wire signed[6:0]	intermediate2;
wire signed[7:0]	sumb;
wire signed[7:0]	sumcarry;
wire	is_overflow;


assign intermediate1 = a[7]? ~b + 1'b1 : b;	
assign intermediate2 = a[7]? ~b + 1'b1 : (~a)+b+1;

assign sumb = a[7]? a[7:1] + 8'd1 : a[7:1] + (~a[7:1] + 8'd1) + 8'b1;
assign sumcarry = {a[7], a[7:1]};

// try to find out if it is overflow
//assign is_overflow = sumb[8]^sumendmodule
