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


wire signed [7:0] b_sign;
wire [7:0] b_two;
wire [7:0] c;
wire carry;


assign b_two = {~b[6],b[5],b[4],b[3],b[2],b[1],b[0],1'b0};
assign b_sign = b[7] ? b_two : b;

adder8 add1(a,b_sign,c,carry);

assign s = c[7] ? {a[6:0],b_sign} : {a[6:0],b};

assign overflow = carry ^ (a[7]^b_sign);

endmodule
