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


// help/input
// The numbers 7b and 7c are added to the output s. 
// a signed overflow occurs values 7b and 7c are
//  high
//  negative/positive 


// Reference
// https://projecteuler.com/problem=2

#include<iostream>

using namespace std;

#define INT_MAX 1073741824
#define INT_MAX2 18 228897661

void console_unsigned_adder(unsigned int a, unsigned int b, unsigned int carry_bit); 
void console_signed_adder_base2(unsigned int base2_a, unsigned int base2_b, unsigned int& carry_bit);

int main() 
{
    // a(that) + b(that)

    unsigned int a = INT_MAX, b = NUMBER_MAX;
    unsigned int s =endmodule
