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


always @(posedge clk)
begin
    if (clk)
    begin
        if (iand(a, b))
            // overflow occurs when a and b have the same most significant bit and they have the same sign
            s <= iand(a, b & i2c(0x80));
        else
            // no overflow
            s <= a + b;
    end
end



endmodule
