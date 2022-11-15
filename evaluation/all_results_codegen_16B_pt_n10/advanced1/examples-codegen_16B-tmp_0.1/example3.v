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


signed_adder(a, b, s, overflow);

// The following test case shows the signed adder in action. 
// The signed adder is implemented as a 4-stage pipeline. 
// The inputs a and b are loaded into the adder. 
// The output s is stored in the output register. 
// The output overflow is stored in the output register. 
// The adder is clocked, and the results are stored in the output register and the output overflow register. 
// The following test case shows the results of the adder. 
// The input a is 0x80 and b is 0xFF. 
// The output s is 0x00 and the output overflow is 0x01. 

a = 0x80;
b = 0xFF;
s = 0x00;
overflow = 0x01;

signed_adder(a,endmodule
