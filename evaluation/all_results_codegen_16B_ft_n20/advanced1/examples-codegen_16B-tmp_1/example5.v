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


assign overflow = (~a[7] & ~b[7] & s[7]) | (~a[7] & b[7] & ~s[7]) | (a[7] & ~b[7] & ~s[7]) | (a[7] & b[7] & s[7]);
addition addition_1(a[7:0], b[7:0], s[7:0], 3'b000, 1'b0, s_temp);
sh_by4 shift_1(a[7:0], 1'b0, a_sh_by4);
sh_by4 shift_2(~b[7:0], 1'b0, b_sh_by4);

assign a_sh_by4 = a[7:0] << 3;
assign b_sh_by4 = b[7:endmodule
