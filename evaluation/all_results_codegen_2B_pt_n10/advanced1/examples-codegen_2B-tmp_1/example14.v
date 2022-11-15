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


// elabort:  Second

//time: 4700      // only results
//mem: 6360
//time 2sh94: 10058/100000  // precise mem=32488

#include<stdio.h>
int main(){
    int a[9]{-2147483647,
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7};
    int b[9]{-2147483647,
    0,
    131,
    132,
    133,
    134,
    135,
    136,
    137};
    printf("%x %x ", a[7], b[7]);
    signed_add(a[7], b[7], a[7], b[7] is overflow);
    printf("%xendmodule
