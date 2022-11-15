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


sft #(4) sft_a;
sft #(5) sft_b;

sft_a = a[7:0] << 4;
sft_b = b[7:0] << 5;

sft_a = sft_a | (sft_b & sft_a);

sft_a = sft_a | (sft_b & sft_a);

sft_b = ~(sft_a & sft_b);

sft_a = sft_a | (sft_b & sft_a);

if (sft_a > 0)
{
    sft_a = sft_a - 1;
}

sft_a = sft_a & 0x1F;

sft_b = ~(sftendmodule
