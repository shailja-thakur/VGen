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


wire [8:0] c;
wire [7:0] b_signed;

assign b_signed = ~b[7] ? b : ~a[7] ? a : b;

assign c = a + b_signed + 8'b00000001;

assign s = c[7] ? ~c[6:0] + 1'b1 : c[6:0];

assign overflow = (a[7] & b_signed[7]) | (c[7] & a[7]);

endmodule
