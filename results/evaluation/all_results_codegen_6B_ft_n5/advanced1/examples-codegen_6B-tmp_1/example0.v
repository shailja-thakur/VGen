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


wire [6:0] newa = {a[7], a[7/(2*2)-1], a[6:(2*2)-1], a[4],a[3],a[2],a[1]}; 
wire [6:0] newb = {b[7], b[7/(2*2)-1], b[6:(2*2)-1], b[4],b[3],b[2],b[1]}; 

wire [5:0] sum = newa+ newb; 


assign s = {sum[7], sum[7/(2*2)-1],sum[5:(2*2)-1], sum[3],sum[2],sum[1],sum[0]};

assign overflow = newa[7] & newb[7];


endmodule
