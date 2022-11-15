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


// assigns the low order bits of a and b to bit0 and the mid-order bits to bit1 if the most sicnificant bits are low and high, respectively.

assign s[0] = a[0] ^ b[0] ^ 1'b0; 


// Multiplier method

assign b_bits[0] = b[0] & 1'b0; 
assign b_bits[1] = b[1] & 1'b0; 
assign b_bits[2] = b[2] & 1'b0; 
assign b_bits[3] = b[3] & 1'b0; 
always @ ( * )
begin // begin always has an end

// assign the mid-order bits of b to b_mid[0] through b_mid[3]

assign b_endmodule
