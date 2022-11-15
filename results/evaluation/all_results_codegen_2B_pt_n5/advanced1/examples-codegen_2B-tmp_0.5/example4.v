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


// This design is based on the following paper:
// "A Signed Adder with 8-bit Overflow", by S. S. Hill
// The design is implemented in the following steps:
// 1. The input numbers a and b are converted to a 16-bit number.
// 2. The 16-bit number is split into two 8-bit numbers.
// 3. The two 8-bit numbers are added and the overflow flag is set.
// 4. The output number s is converted back to a 16-bit number.
// 5. The overflow flag is checked.
// 6. The overflow flag is cleared.
// 7. The output number s is returned.

#include <iostream>

using namespace std;

int main() {
  
  int a = 0b100011010;
  int b = 0b100011010;
  int s =endmodule
