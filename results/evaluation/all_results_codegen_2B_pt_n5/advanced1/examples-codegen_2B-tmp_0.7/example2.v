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


signal [7:0] a_s;
signal [7:0] b_s;


circuit
{
    a_s <= a[7:0];
    b_s <= b[7:0];

    s <= a[7:0] + b[7:0];

    // if (a_s == 0) and (b_s == 0) then s <= 0
    // if (a_s == 0) and (b_s == 1) then s <= -1
    // if (a_s == 1) and (b_s == 0) then s == a[7:0]
    // if (a_s == 1) and (b_s == 1) then s == a[7:0] + b[7:0]

    //  if (a_s == 0) and (b_s == 0endmodule
