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


// function add(a, b)
// {
//     s := (a + b)
//     overflow := (a & 0x80) != (b & 0x80)
//     return s, overflow
// }

// function main()
// {
//     a := 0b11000011
//     b := 0b01101101
//     s := add(a, b)
//     print s
//     overflow := s[7]
//     print overflow
// }

// Output:
// [0b11000011 0b01101101 0b01101101 0b00000000]
// 1
// 1
endmodule
