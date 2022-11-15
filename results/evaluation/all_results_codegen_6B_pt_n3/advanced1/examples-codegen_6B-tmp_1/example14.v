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


// declare v_sum as an one-bit signed number
// named to compensate for integer overflow of 2's complement values

variable unsigned v_sum < 1'b0> : unsigned;
variable signed v_tmp_sum < 7'b0> : unsigned;

always @(posedge clk or prenexposedge clk_ahb) begin

    // set the carry an overflow signals to 0
    if (hclk_ahb) begin
        v_sum <= (~0x55'0001'0000); // NOTE: assumes signal types are signed
    end

    // set the carry signals to the high bit of the args a to b
    if (hclk_ahb) begin
        if (a > 127 or b > 127) begin
            v_tmp_sum <= (b + a) & 0x80'0000; // NOTE: assumes signal types are signed
end
end
end
endmodule
