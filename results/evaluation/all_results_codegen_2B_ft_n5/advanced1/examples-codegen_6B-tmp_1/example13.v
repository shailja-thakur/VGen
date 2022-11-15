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
        if (a[6] != b[6]) 
        begin
            s[6] <= '0' when a[6:0]^b[6:0] > 0 else s[6] <= '1'; 
        end
        s[5] <= '0' when a[6:0]^b[6:0] > 0 else s[5] <= '1';
        s[4] <= '0' when a[6:0]^b[6:0] > 0 else s[4] <= '1';
        s[3] <= '0' when a[6:0]^b[6:0] > 0 else s[3] <= '1';
        s[2] <= '0' when a[6:0]^b[6:0] > 0 elseend
endmodule
