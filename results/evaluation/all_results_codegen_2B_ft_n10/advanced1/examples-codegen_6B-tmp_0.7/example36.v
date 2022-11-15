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


assign overflow = (a[7] & b[7] & ~s[7]) | ((a[7] ^ b[7]) & (s[7] ^ a[7]));
// $display("a 0 to 7 = %b \n b 0 to 7 = %b\n s 0 to 7 = %b\noverflow 0 to 7 = %b\n",a[6:0], b[6:0], s[6:0], overflow[6:0]);
// $display("a 7 to 7 = %b \n b 7 to 7 = %b\n s 7 to 7 = %b\noverflow 7 to 7 = %b\n",a[6:0], b[6:0], s[6:0], overflow[6:0]);

// $display("a \n b \n s \noverflow");

endmodule
