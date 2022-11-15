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

 adder add_ab(.a(a),
 
 
 /// ======= ONLY WORKS IF MSB OF a>MSB OF b ===/
 /// not needed if MSB OF a == MSB OF b
 assign s[7:0] = s[6:0] + a[7:0] + b[7]; //We can merge the BUS and LATCH clear outputs into one module which doens't require a
 scroll flicker
 
 assign s[8] = a[8] & b[8] & (~s[7] | ~a[7] & ~b[7]);
 
 always @(s[7] or a[7] or b[7]) //timing diagram showed this level of nesting is correct??????
 begin
 assign s[8:1] = s[7:0] + {1'b0,s[8]}; //1 bitend
endmodule
