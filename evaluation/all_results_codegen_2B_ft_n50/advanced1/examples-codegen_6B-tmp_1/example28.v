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


// Below uses an exclusive-or operator to find the result of a signed add of two numbers with signed bit high or low respectively. 
assign {overflow,s} = a+b; 
// The above sets s to be the sum of a and b. If there is an overflow of a and b, then s is set to be the two signed numbers' sum with the most significant bit turned into the negative value. Our exclusive-or sets the output to being the two numbers' sum with the sign bit of s changed to negative. 
// It also sets anoverflow to high, signaling when a signed overflow occured.
//--------------------------analysis of the outputs--------------------------
//If we subtract the two numbers' sums, the overfow should continue to be high, but s should no longer be negative. This is what our analysis tests.


endmodule
