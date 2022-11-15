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


	wire ms1, ls1, ms2, ls2;
	
wire [8:0] sum;
wire [8:0] c;
wire overflow;

//assigns c1 = a-b;
//assigns c2 = a+b;
fa_adder fa_adder1(
.a(a),
.b(b),
.cin1(1'b0),
.cout(c[0]),
.sum(sum[0]),
.overflow(overflow)
);

fa_adder fa_adder2(
.a(a),
.b(b),
.cin1(1'b1),
.cout(c[1]),
.sum(sum[1]),
.overflow(overflow)
);
	

assign ms1 = sum[0] ^ c[0];
endmodule
