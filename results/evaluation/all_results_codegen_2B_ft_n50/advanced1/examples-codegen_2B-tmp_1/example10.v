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


// Negative values meet all tests and greater than 8's compliment, they will saturate
// Nor negative values in the positive range will be given these tests.


// a<b starts in 2. 
// 1). precision of negative numbers greater that the precision of the adder can be reached by 
// adding == unsigned numbers bigger than eight bits or when a=0
// 2). (b>a) never occurs. 
// 2-(b>a) will become sums of values in 1 until values equal. (values saturate as owerflow = 0 because start there is arithmetic always non bug)
// 3). signed overflow will be a legal result

// DONE


// The result of the addition is placed in the sum, unless there was a underflow resulting in a 0. 
// in this case a ValueError exception is raised (divide by zero is potentially happening).


// sometimes, the sumendmodule
