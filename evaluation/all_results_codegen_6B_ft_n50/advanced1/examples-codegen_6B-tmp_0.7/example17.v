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


wire signed [7:0] b_signed;
wire signed [7:0] signed_s;
wire overflow_s;

assign b_signed = ~b[7] + 1'b1; // b is treated as a two's complement number

assign signed_s = a + b_signed;

assign overflow_s = (a[7] & b_signed[7]); 

assign s = signed_s;
assign overflow = overflow_s;

endmodule
