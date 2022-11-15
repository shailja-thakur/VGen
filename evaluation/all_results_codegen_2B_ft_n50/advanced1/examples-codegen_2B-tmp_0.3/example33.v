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


wire [7:0] carry;
wire [8:0] sum;
wire overflow;

assign carry[0] = 1'b0;
assign carry[1] = a[0] & b[0];
assign carry[2] = a[1] & b[1];
assign carry[3] = a[2] & b[2];
assign carry[4] = a[3] & b[3];
assign carry[5] = a[4] & b[4];
assign carry[6] = a[5] & b[5];
assign carry[7] = a[6] & b[6];
assign carry[8] = a[7] & b[7];

assign sum[0] = a[0] ^ b[0];
assign sum[1] = a[endmodule
