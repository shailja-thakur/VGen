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


// three functions combinational logic that are performed on the individual bits of each number

// finds most significant bit in the bit array and returns index where it is the highest
// function returns index of most significant bit if the bit at its index is high, else it decrements 

module find_first_high(input [7:0] x,

output [5:0] idx); // 6 bit binary number shown in decimal equivalent as first digit



// function to find the first occurence of a high binary number within the 8 bit binary number x;

// first bit taken as a 1
// -1 because the indexing starts from 0
// end_1: index of first 1 within x[7:0]

wire i0,i1,i2,i3,i4,i5,i6;
reg j0=1,j1=1,j2=endmodule
