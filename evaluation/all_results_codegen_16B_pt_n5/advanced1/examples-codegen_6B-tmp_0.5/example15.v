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


// The signed_adder function should return the result of the addition of a and b to the output s.
// The result is the least significant eight bits of s.
// The result of the addition should be the least significant eight bits of s.

function signed_adder(a, b)
{
    if(a[7] == 1 and b[7] == 1) //overflow if both inputs have most significant bit set
    {
        s[7] = 1;
    }
    else if(a[7] == 0 and b[7] == 0) //overflow if both inputs have least significant bit set
    {
        s[7] = 0;
    }
    else
    {
        s[7] = a[7] + b[7]; //add the two inputs
    }
    
    if(s[7] > 127) //overendmodule
