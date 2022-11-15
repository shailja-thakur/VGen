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


wire b_sign, a_sign;
assign b_sign = b[7] ^ (b[6:0] == 7'd1);
assign a_sign = a[7] ^ (a[6:0] == 7'd1);

always @(a,b)
begin

if (a_sign == b_sign) begin
// no overflow
assign overflow = 0;
assign s = a + b;
end
else if (a_sign == 1'b0) begin
// no overflow
assign overflow = 0;
assign s = a - b;
end
else if (b_sign == 1'b0) begin
// no overflow
assign overflow = 0;
assign s = a + ~b + 1;
end
else if (a == 8'd0) begin
// negative/both signs, positive/bothend
end
endmodule
