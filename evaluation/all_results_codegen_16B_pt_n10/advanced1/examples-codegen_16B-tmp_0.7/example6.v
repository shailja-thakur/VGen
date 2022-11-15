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


// The following is the body of signed_adder:

signed_adder(a, b, s, overflow) begin
    // The most significant bit of a and b are compared to determine a signed overflow.
    // If the most significant bits of a and b are low then no signed overflow occurs.
    // If the most significant bits of a and b are high and the most significant bit of s is low then signed overflow occurs.
    // If the most significant bits of a and b are high and the most significant bit of s is high then no signed overflow occurs.

    if ((a[7] == 0) && (b[7] == 0)) begin
        // No signed overflow occurs.
        s[7] = a[7] + b[7];
        s[6] = a[6] + b[6];
        end
end
endmodule
