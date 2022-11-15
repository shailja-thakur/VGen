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


assign {s,overflow} = a + b;
 
/*All the inputs of the adder are 32 bit numbers.*/
/*The output s is 8 bits of a and 8 bits o f b.
End is the (8 + 8 + 3) bit output
*/

/*Step1 : Binary To BCD*/
/*Binary to BCD conversion requires three shift right operator for shifting the input numbers 0111010011 and 1011000010*/
/*0 is represented as '6' in a bcd*/
/*1 is represented as '3' in a BCD*/

/*Step 2 : Intermediate sums computation*/
/*Ones Computations*/
/*Hence the least significant bit of the sum will not be 14 if the carry from the bit 6 to bit 0 is 1(a is 0 or 1)*/
/*00 = 5 + 5 = Into Three Block 
0010 = calculate 4 + 6endmodule
