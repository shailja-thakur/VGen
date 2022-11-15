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


wire [7:0] s_tmp;
wire [7:0] a_tmp;
wire [7:0] b_tmp;
wire overflow_tmp;

assign overflow = overflow_tmp;

assign s = s_tmp;
assign a = a_tmp;
assign b = b_tmp;

assign s_tmp = a + b;
assign a_tmp = a << 1;
assign b_tmp = b << 1;

assign overflow_tmp = (a[7] == 1'b0 && b[7] == 1'b0) && (s_tmp[7] != s[7] || s_tmp[6] != s[6]);

endmodule
