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


wire signed [7:0] b_signed = {b[6:0],b[7]};
wire signed [7:0] a_signed = {a[6:0],a[7]};
wire [7:0] s_signed = {s[6:0],s[7]};

assign overflow = (a_signed[7]&b_signed[7]) & ~(s_signed[7]&s_signed[6]);

// adder using fulladder

wire [7:0] c_fulladder;

fulladder fa0(a_signed[0],b_signed[0],1'b0,s_signed[0],c_fulladder[0]);
fulladder fa1(a_signed[1],b_signed[1],c_fulladder[0],s_signed[1],c_fulladderendmodule
