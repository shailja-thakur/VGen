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

  //@ output_overflow assumes |s| = signed(8) 

  signed_adder.exe([andb, relinqu](parameter bool overflow) {
    unsigned sum, carry = 0;
    
    for (sum = carry = 0; sum < 4; sum += carry, (carry ? 1 :  0)) {
//    bool overflow = a[sum] & noting;
      
//    bool overflow = a[sum] & ((b[sum] ^ 1) | (a[sum] ^ b[sum]));
    
    if (((((a[3] ^ a[2]) | ((a[1] ^ a[2]) & (a[1] ^ a[5]))) | ((a[4] ^ a[5]) & (a[4] ^ a[7]))) | ((a[2] & a[3] & a[4] &endmodule
