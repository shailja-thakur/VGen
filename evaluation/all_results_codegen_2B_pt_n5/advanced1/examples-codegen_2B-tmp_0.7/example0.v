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



signed_adder adder;

wire overflow;
wire overflow1;

unsigned a_sum;
unsigned b_sum;

always_comb
{
    overflow1 = overflow;
    overflow = 0;
    if (a_sum < b_sum)
    {
        s = a_sum;
        if ((s>=0) && (s>=a_sum))
            overflow = 1;
    }
    else
    {
        s = a_sum + b_sum;
        if ((s>=0) && (s>=a_sum+b_sum))
            overflow = 1;
    }
}

always_seq_reg [7:0] s_reg;

void main()
{
    // a_sum = a[7:0] + b[7:0];
endmodule
