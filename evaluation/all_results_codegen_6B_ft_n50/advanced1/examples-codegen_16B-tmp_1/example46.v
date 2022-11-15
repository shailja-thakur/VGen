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


wire //least significant bit in entire result
xor_operand_0 = a[0] ^ b[0],
//any bits with "xor_operand_0" as a component are set to 0 in the addition
carry_0 = b[0] ? xor_operand_0 : a[0],
//the result is corrected if the least significant bit of b is 0 or a is 0, where "carry_temp[0]" is extracted from the temporary variable "carry_0"
//If either a or b is 0 then it will replace the old value with 1, if the other number is 0 is replaces with 1
carry_temp[1] = a[1] ? b[1] ? carry_0 : ~ (xor_operand_0) : a[1],
//more specifically if the value of either a or b is 1 the least significant bit of result willendmodule
