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


assign r2 = {1'b0, b[0]}; // additional bits 0
assign r39 = a + r2; // calculate sum of two extensions. s is an extension of 8 bits and r39 is an extension of 40 bits.
assign check1 = {1'b0, r39[39]}; // check to see if these are different.
assign check2 = {1'b0, r2[0]};
assign check3 = r39 + {1'b0, check1};
assign s = (overflow) ? (r39) : (r39 + {1'b0, check2}); // assign output value to an 8-bit or 40-bit number.
assign overflow = ((a[7]==b[7]) && (a[7]!=s[7])) ? 1'b1 : 1'b0endmodule
