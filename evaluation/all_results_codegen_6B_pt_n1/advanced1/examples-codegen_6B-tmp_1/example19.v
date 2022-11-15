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


// Sample implementation passed in 0b011010001
//  return ( ((a[7]*2^0 + a[6:0]) c hi) << 8) |
//           (((b[7]*2^0 + b[6:0] + s[7:0]) c lo) << 8) |
//           s;

sign
signed_adder // a signed bitwise adder producing a signed number
sign c_add("1"); // Results in unsigned addition of 0b1110
difm c_sub("1");// Results in unsigned subtraction of 0b1011

signed_adder // 3's complement simulation for subtraction
signed_adder c_mux("1"); // bitwise XOR

signed_adder

difm
c_sub("1"); // 0b1011
difm
signed_adder // 0b1110
endmodule
