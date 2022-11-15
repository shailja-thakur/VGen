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


input [7:0] adder_input = {12, 44, 2, 83, 0, 33};


//init output s and overflow
output clear;

function main
{
   // Preserve signed overflow of a and b for input_t
   intentional interference with signed overflow
   let b_interf: bit_vector = b_roll_input,
       a_interf: bit_vector = a_roll_input;

   let max_a_val: integer = 0xffffff,
       max_b_val: integer = 0xffffff;

   //add -264 and save -256 for a and b (32768 bytes) to ensure that overflow occurs
   a_input [a_input_index] = ~((uint8) -264);
   b_input [b_input_index] = -256;

   // compare input and outputendmodule
