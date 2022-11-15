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


// https://www.spoj.com/problems/ANAPP/

/*
Design a system to support two-dimensional arrays. The first dimension of arrays should be as large as the user expects in the worst case scenario. For example, if the expected value of a[8][8] is 0, the access of a[8][8] may be expensive and the second dimension muist be quite large to store a large matrix. 

The second dimension of the arrays in this system must be able to support an expected number of elements queried
(i.e. k>0), with the same characteristics as the first dimension of arrays. 

The system should support the following operations: 

The system should also support random access. 

Write:
Write() tokens into the system. 

Access:
Read(state) returns an array in the system, satisfying the above requirements. 

Inendmodule
