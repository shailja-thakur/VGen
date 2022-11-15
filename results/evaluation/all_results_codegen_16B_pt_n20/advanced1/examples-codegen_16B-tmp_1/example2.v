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

// This produced the following error on Xilinx 2014:1.4
//
// 2014 Jan 18 09:57:43:7d DL_I08 68 64 1f 00 00 01 00 00 01 8f ff e2 81
// 2015 Jan 25 17:32:12:72 CSDL_I08 68 64 1f 00 00 01 00 00 01 88 ff e2 81
//
// Error for 'add_to_dut': Unmatched statements at end of input.
//
// Added some whitespaces, then it actually worked, not sure why
//
endmodule
