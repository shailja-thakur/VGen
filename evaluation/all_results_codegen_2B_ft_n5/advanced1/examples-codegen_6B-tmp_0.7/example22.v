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

wire [7:0] a_signed = {a[6:0],a[7]};

wire signed [7:0] s_signed = {s[6:0],s[7]};

wire [7:0] temp = a_signed+b_signed;

wire [7:0] s = ((temp[7]==1'b1)&&(a_signed[7]==b_signed[7]))?(temp[7:1]+b_signed[7:1])[7:1]:((temp[7]==1'b1)&&(a_signed[7]==b_signed[7]))?(a_signed+b_signed)<<1:temp[7:1]+(b_signed[endmodule
