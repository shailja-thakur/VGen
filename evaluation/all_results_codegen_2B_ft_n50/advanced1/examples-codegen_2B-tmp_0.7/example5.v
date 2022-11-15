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


assign overflow = ({8{~a[7]}} & ({8{~b[7]}} & ( {8{s[7]}} | a[7])))| ({8{a[7]}} & ({8{~b[7]}} & ( {8{~s[7]}} & (~a[7])))) ; 

always @(*) begin
if(a[7]) s = a + b + 8'b0000_0000; // if a[7] is 1 then the adder adds a[7] to the current value s, else it adds b[7]
else if(~a[7]) s = a + b + 8'b0000_0000; //if a[7] is 0 then the adder adds b[7] to the current value s, else it adds a[7]
else if(b[7]) s = a +end
endmodule
