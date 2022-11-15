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


// add a and b to s
wire [31:0] s_n = a + b;
wire [31:0] s_h = (a[31:0] | b[31:0]) + s_n[31:0];
wire s_l = s_n[31:0];

// carry in the high bit of b to the output
assign s_h = b[31:0] + s_n[31:0];
assign s_l = s_n[31:0];

// if a signed overflow occurs then assign overflow to 1, otherwise assign 0 to overflow
assign overflow = (s_h[31:0] != 0) && (s_h[31:0] == 0x8000);
endmodule
