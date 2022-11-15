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


// Implement the signed adder.

signed_adder(a, b, s, overflow) {
    overflow = (a[7] == 0 && s[7] == 1) || (b[7] == 0 && s[7] == 0);
    s[7:0] = a[7:0] + b[7:0];
    s[15:8] = a[15:8] + b[15:8];
    s[23:16] = a[23:16] + b[23:16];
    s[31:24] = a[31:24] + b[31:24];
}

// Use the signed adder in the adder module.

signed_adder_module(a, b, s, overflow) {
    signed_adder(a[7:0], b[7:0], s,endmodule
