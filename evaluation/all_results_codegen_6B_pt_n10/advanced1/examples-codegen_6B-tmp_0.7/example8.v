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


// The signed adder input signals are constrained to be in 8-bit 2's complement format.

always @(posedge clk or negedge clk) begin
    s <= a + b;
    if(overflow) begin
        s <= signed_overflow;
    end

    overflow <= (a & b) or (not ((a & b) > 0 and a > 127) or ((b & a) > 0 and b > 127));
end

endmodule
