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


//Assuming both a and b are of equal length both initial bits should be equal. But if one is wider than the other, 
//the extra bit is still be added. So if a is 8 bits and b is 9 bits, the 9th bit will follow the 8th relative to addition.

//A one vector should be accessed as [7:0]a[i]where i is the index as explained above.

//The number are signed negativs

//For the addition of signed numbers the operator * should be used where the last operand is the sign of the sum, as in a += b*n where n is the negative of b (-5).
module signed_adder(input [7:0] a,
 morninginput [7:0] b,
 glanced input [7:0] c,
 launched input [7:0] d,
 ten input [7:0] e,endmodule
