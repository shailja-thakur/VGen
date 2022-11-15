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


// Sign extending the operands.
// The most significant bit is transfered to the sign of the resulting number.
assign sa = {{8{a[7]}}, a};
assign sb = {{8{b[7]}}, b};

// Determine the addition of the most significant bits.
// The addition is performed by the ALU.

// Determine the most significant bit of the addition result.
// The most significant bit is transfered to the sign of the resulting number.

// Determine the sign of the addition result.
// The sign of the addition result is transfered to the output s.

// Determine the overflow of the addition result.
// The overflow of the addition result is determined by comparing the most significant bit of the result with zero.
// A positive overflow (s[7]==1) will be thrown if s[7] is high. 
//endmodule
