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

// The adder is now ready to be driven by a clock. 
// The clock is driven by a clock generator that is fed by a rising edge of the clock input. 
// The clock generator is a simple counter that counts from 0 to 3. 
// The clock generator is fed by the rising edge of the clock input and is reset to 0 on a falling edge of the clock input. 


// Design a decoder that decodes a stream of bits b[0:7] into a stream of bits s[0:7]. 
// The decoder is a simple binary decoder. 
// It decodes the input bit b[7] into the output bit s[7]. 
// It decodes the input bit b[6] into the output bit s[6]. 
// It decodes the input bit b[5] intoendmodule
