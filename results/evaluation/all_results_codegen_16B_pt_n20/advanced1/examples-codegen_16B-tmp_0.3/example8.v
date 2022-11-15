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


// The signed adder is implemented as a 4-stage pipeline.
// The inputs a and b are fed into the first stage of the pipeline.
// The outputs of the first stage are fed into the second stage.
// The outputs of the second stage are fed into the third stage.
// The outputs of the third stage are fed into the fourth stage.
// The outputs of the fourth stage are fed into the output s.
// The outputs of the fourth stage are also fed into the output overflow.

// The first stage adds the most significant bit of a and b to the most significant bit of s.
// The second stage adds the second most significant bit of a and b to the second most significant bit of s.
// The third stage adds the third most significant bit of a and b to the third most significant bit of s.
// The fourth stage adds the fourth most significant bit of a and b to the fourth most significant bitendmodule
