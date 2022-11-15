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


output [7:0] n;

initial begin
    n = a;
    s = a;
    overflow = 0;
end

always @(posedge clk)
    if (overflow)
        s = 0;
    else
        s = n;

end

// @author   Jeffrey C. Ondracejak
// @email    jeffrey.ondracejak@gmail.com
// @github   https://github.com/jondracejak
// @bj       jondracejak.github.io
// @twitter  https://twitter.com/jondracejak
// @gravatar https://avatars.githubusercontent.com/u/1395?v=3
endmodule
