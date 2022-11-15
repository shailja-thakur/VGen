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


wire [7:0] sa;
wire [7:0] ba;
wire [7:0] sb;
wire o1,o2,o3,o4,o5,o6,o7;

assign sa = a[7] ? ~a + 1'b1 : a;
assign ba = b[7] ? ~b + 1'b1 : b;
assign sb = sa + ba;

assign o1 = (sa == 8'b00000000) ? 1 : 0;
assign o2 = (ba == 8'b00000000) ? 1 : 0;
assign o3 = (sb == 8'b00000000) ? 1 : 0;
assign o4 = (a[7] & ~b[7]) ? 1 : 0;
assign o5 = (a[7] & b[7]) ? 1endmodule
