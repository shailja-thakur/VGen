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


output [7:0] adder;

char b_overflow = 0;
char a_overflow = 0;

char overflow = 0;

// TODO: [1/8/19] This is a pseudocode that can be implemented with a hardware. 
// then the hardware can be integrated into this sketch.

char a_overflow = 1;
char b_overflow = 1;

char carry = 1;
char overflow_carry = 1;

void adder_run() {
    if (overflow) {
        overflow_carry = overflow_carry ^ 1;
    }
    b_overflow = carry;
    carry = 0;
    if (a_overflow) {
        overflow_carry = overflow_carry ^ 0;
        a_overflow = a_overflow ^ 1;
        carry = 1endmodule
