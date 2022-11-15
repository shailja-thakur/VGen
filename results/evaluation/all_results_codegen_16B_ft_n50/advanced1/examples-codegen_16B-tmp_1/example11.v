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


wire [7:0] sig_add;
wire [4:0] out_sig_add;

assign out_sig_add = { a[0] | b[0], out_sig_add_2[4] };

wire out_carry = a[0] & b[0] | a[0] & out_sig_add_2[0] | b[0] & out_sig_add_2[0];

// assigns overflow based on MostSigBits of current adder
// assigns overflow based on flipping the most significant bit
assign overflow = (~a[7] & out_carry)|(~a[7] & ~b[7] & out_sig_add[7]);


assign sig_add = a + b;

assign s = sig_add[7:0];endmodule
