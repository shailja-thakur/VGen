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


// The signed adder is implemented in the following steps:
// 1. The most significant bit of a and b is set to the least significant bit of a and b
// 2. The least significant bit of a and b is set to the least significant bit of a and b
// 3. The most significant bit of s is set to the least significant bit of a and b
// 4. The least significant bit of s is set to the least significant bit of a and b
// 5. The least significant bit of s is set to the least significant bit of a and b
// 6. The most significant bit of s is set to the least significant bit of a and b
// 7. The least significant bit of s is set to the least significant bit of a and b

always @(posedge clk)
begin
    if (a[7] == b[7])
    begin
        s <= a + b;end
end
endmodule
