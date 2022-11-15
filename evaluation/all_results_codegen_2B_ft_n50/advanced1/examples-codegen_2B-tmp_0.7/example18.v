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



wire [8:0] add_a_b;
wire [8:0] add_b_a;

assign add_a_b = a & ~b + b & ~a + 1'b1; 
assign add_b_a = ~a & b + a & b;

wire [7:0] add_res;

assign add_res = add_a_b + add_b_a;

reg [7:0] add_overflow;
always @(*) 
if(add_res[8]) 
	add_overflow <= 1; 
else 
	add_overflow <= 0;

wire [7:0] add_s;

assign add_s = add_res ^ {1'b0,add_overflow};

assign overflow = add_overflow;endmodule
