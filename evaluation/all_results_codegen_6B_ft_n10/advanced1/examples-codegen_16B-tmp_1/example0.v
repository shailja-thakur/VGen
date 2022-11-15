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


assign overflow = (a[7] == b[7] && a[7] == s[7])? 1'b1: 1'b0;


always @(*) begin // this block is a combinational always block

// similar to a case-statement, the if-else statements check the conditions when a signed adder has been requested

if ((a[7] == 1'b0 && b[7] == 1'b0 && s[7] == 1'b1) || (a[7] == 1'b1 && b[7] == 1'b1 && s[7] == 1'b0)) begin // case 1

assign s[6:0] = 7'b11000011; // all of the bits are high (overflow)

// assign s[6:0] = (a[6:0] + b[6:endmodule
