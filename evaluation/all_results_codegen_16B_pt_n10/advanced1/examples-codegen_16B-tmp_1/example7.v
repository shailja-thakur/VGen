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


a = a + b + carry|s++;
carry 

end module ; 
 
signed_adder(a,b,s, Overflow) {
    b_signed = not(b[7])
    s[8] = a[8] ^ s[7] ^ b_signed
    
    s[9] = (a[9] + b[9] + carry) | a_signed_overflow

    s[10:0] = a[10:0]+b[10:0] 
    a_signed_overflow
}endmodule
