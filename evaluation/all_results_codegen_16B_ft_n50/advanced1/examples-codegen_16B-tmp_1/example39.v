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


always @(*) begin
 if ({a[7], b[7]} == 1'b1) begin
 // case for performance optimizations
 // a and b are 0 when only one of them is signed and the output should be 0
 if ({s[7], s[6], s[5]} == 3'b0_0) s = 8'b0;
 // a and b are both signed
 else begin // {a[7], b[7]} == 1'b0
 // a and b are both positive
 if ({s[7], s[6], s[5]} == 3'b0_0) s = s + a;
 // a is negative and b is pos
 else if ({s[7], s[6], s[5]} == 3'b0_1) s = a - b;
 // a is positive and b is neg
 else if ({s[7], send
end
endmodule
