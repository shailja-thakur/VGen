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


// The result of the adder is the sum of a and b. 
// The result of the adder is written to the output register s. 
// The carry bit is written to the carry register. 
// The overflow bit is written to the overflow register. 

signed_adder(a, b, s, overflow) begin
    s <= a + b;
    overflow <= (a[7] == 0) and (b[7] == 0) and (s[7] == 1);
end
endmodule
