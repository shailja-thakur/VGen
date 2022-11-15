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


signed_adder #0 (a,b,s,overflow)
{
    wire carry;
    always @ (a == 0 || b == 0)
    begin
        s <= a;
        carry <= a;
    end
    always @ (a == 0 || b == 0)
    begin
        s <= b;
        carry <= b;
    end
    always @ (a == 0 || b == 0)
    begin
        if (carry == 1)
            s <= -1;
    end
    if (a > b)
        s <= a - b;
    else
        s <= b - a;

    if (carry == 1)
        overflow <= 1;
    else
        overflow <= 0;
}

// S-Latch
input [7:0] a;
input [7:0] b;
outputendmodule
