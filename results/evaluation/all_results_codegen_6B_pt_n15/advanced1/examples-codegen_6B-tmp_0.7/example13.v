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


#define Signed_add(a, b, s) \
	(s) = (a) + (b); \
	(overflow) = (((a) ^ (b)) & 0x80) | (((a) ^ (s)) & 0x80) | (((s) < 0) != ((a) < 0)) | (((s) < 0) != ((b) < 0));

always @ (posedge clk or negedge rst) begin
    if (negedge rst) begin
        s <= 0;
        overflow <= 0;
    end else begin
        Signed_add(a[7:0], b[7:0], s[7:0]);
        if (s[0] == 0x80) begin
            s <= 0x7f;
            overflow <= 1;
        end
    end
end
endmodule
