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


assign x = a[7:0];
assign y = b[7:0];

 
always @ (x or y or s)
begin
xor(s_temp, x, y);

and(s_temp0, x, y);


and(s_temp1, x, s);
xor(s_temp0Or1, s_temp, s);

or(overflow, s_temp1, s_temp0);

end

endmodule
