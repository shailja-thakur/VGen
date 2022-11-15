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


wire [7:0] b_signed;
wire signed_comp, s_comp; //compare most significant bit to determine if b is signed or not

assign b_signed = b ^ {b[6:0],1'b1}; // b_signed is b2 in the equation for signed-ness

//for signed comparison
assign signed_comp = a[7] ^ b_signed[7];

//if a<b, a is less than b, otherwise a is greater than b
assign s_comp = signed_comp ? a[7] : b_signed[7];

assign s = {a[6:0],b_signed[6:0]}; //s1 in the equation for signed-ness
assign overflow = signed_comp & (a[7] ^ b_signed[7]); //if a and b have opposite signed-nessendmodule
