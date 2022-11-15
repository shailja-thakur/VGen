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


// The signed adder is a pipeline stage that adds two numbers a and b.
// The addition is performed in two steps.
// In the first step, the input a and b are sign-extended to the same length,
// so that a and b can be added using the unsigned adder.
// In the second step, the two extended numbers are added together using the unsigned adder.

signed_adder(a, b, s, overflow) begin 
    s <= (a + b);
    overflow <= (a < 0) && (b < 0) && (s < 0);
    overflow <= (a > 0) && (b > 0) && (s > 0);
    overflow <= (a == 0) && (b == 0) && (s == 0);
end

signed_adder(a, b, s, overflow) begin 
    s <= (end
endmodule
