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

 assign overflow = ((~a[7] & ~b[7]) & (~(a[7]&b[7]) & (s[7] & (~a[7] | b[7])))); 
 assign s = {signed_sum, overflow};
wire sign_sum;
wire sign_overflow;

sign_weight sign_weigth1 (.a(a[7:0]), .b(b[7:0]), .w(8'b00001010), sign_sum);
sign_weight sign_weigth2 (.a(a[7:0]), .b(b[7:0]), .w(8'b00001011), sign_overflow);
 
or unsigned_or_condition (.a( sign_sum ), .b( sign_overflow) , output_sumdiff ());

endmodule
