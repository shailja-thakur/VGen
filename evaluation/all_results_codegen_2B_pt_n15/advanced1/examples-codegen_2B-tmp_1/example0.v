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


// let x = 8-bit number b by default
// let overflow = true if signed overflow occurred, yes if overflow has occurred
// s is the output value
// s before modification 
void signed_adder_mux8(
    input [7:0] _in,
    output [7:0] s,
    output overflow
) {
    // s before modification 
    int x = _in[7];
    int overflow = true;
    s[7:0]  =  _in[7] + _in[6] + overflow;
    s[6:0]  = _in[6] + _in[5] + overflow;
    s[5:0]  = _in[5] + _in[4] + overflow;
    s[4:0]  = _in[4] + _in[3] + overflow;endmodule
