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

        first_if (sign(a) == sign(s));
            if (sign(s) == sign(b))
                s = a + b; // s needs no signed overflow, a and b need signed overflow
            else
                invalid
        elsif (sign(a) == false and sign(s) == true);
            s = 2'scomp - a + 2'scomp - b; // 2'scomp is adding ones to all the bits of a and b that are XOR'd. s needs no signed overflow if signed overflow is needed (in a and b) 
            else invalid
        elsif (sign(b) == false and sign(s) == true);
            s = a - 2'scomp - b; // 2'scomp is adding ones to all the bits of a and b that are XOR'd. s needs no signed overflow if signed overflow is needed (in a and b)endmodule
