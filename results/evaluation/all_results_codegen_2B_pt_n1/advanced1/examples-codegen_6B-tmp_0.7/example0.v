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


//Variables
var a, b, s, overflow, i, j, k;

//Initialize a and b to a certain value
a = b = 123;

//Set a[i] and b[i] to an initial value
for (i = 0; i < 7; i++) {
    a[i] = 0;
    b[i] = i + 1;
}

//Initialize overflow to 0
overflow = 0;

//Initialize s to 0
s = 0;

//Initialize k to a certain value
k = 0;

//While there are more bits to add to the output
while (k < 8) {
    //If the bit at position k of a is high
    if (a[k] == 1) {
        //If the bit at position k of b is high
        if (b[kendmodule
