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


wire [7:0] carry_out;
wire [7:0] sum_result;
wire overflow;

assign carry_out[0] = 1'b0;
assign carry_out[1] = 1'b0;
assign carry_out[2] = 1'b0;
assign carry_out[3] = 1'b0;
assign carry_out[4] = 1'b0;
assign carry_out[5] = 1'b0;
assign carry_out[6] = 1'b0;
assign carry_out[7] = 1'b0;

assign sum_result[0] = a[0] ^ b[0];
assign sum_result[1] = a[1] ^ b[1];
assign sum_result[2] = a[2]endmodule
