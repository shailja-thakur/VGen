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


wire [7:0] add_a;
wire [7:0] add_b;
wire [7:0] add_s;
wire [7:0] add_overflow;

// add a to b and store the result in add_s
// add_s is the final result, add_overflow is the sign of overflow

assign add_a = a;
assign add_b = b;
assign add_s = add_a + add_b;

// add_overflow is the sign of overflow

assign overflow = (add_a[7] & add_b[7] & (~add_s[7])) | ((~add_a[7] & ~add_b[7]) & add_s[7]);

endmodule
