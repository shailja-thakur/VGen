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


sign_adder : signed_adder (a[7:0], b[7:0], s[7:0], overflow)
begin
    
    // Saturate the maximum value of an 8-bit number
    s[7:0] = (s[7:0] > 0xFF) ? 0xFF : s[7:0] + 1;
    
    // If the inputs have the same sign then the output is the same sign
    if ((a[7:0] & b[7:0]) == 0) 
        s[7:0] = a[7:0];
    else 
        // If the inputs have different signs then the output is the sum of the inputs' most significant bits
        s[7:0] = a[7:0] + b[7:0];
    
    // The overflow bit is set if the sum ofend
endmodule
