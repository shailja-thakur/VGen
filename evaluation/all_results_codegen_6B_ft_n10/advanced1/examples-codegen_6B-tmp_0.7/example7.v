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


wire [6:0] a_signed_ext = {a[6],a[5],a[4],a[3],a[2],a[1],a[0]}; 
wire [6:0] b_signed_ext = {b[6],b[5],b[4],b[3],b[2],b[1],b[0]}; 

wire [6:0] s_signed_ext = {s[6],s[5],s[4],s[3],s[2],s[1],s[0]}; 

assign overflow = s_signed_ext[5] ^ a_signed_ext[6] ^ b_signed_ext[6];

// The final result is equal to s_signed_ext << 1
assign s = s_signed_ext << 1;


endmodule
