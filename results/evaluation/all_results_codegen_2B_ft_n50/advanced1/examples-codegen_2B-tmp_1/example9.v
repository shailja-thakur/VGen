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


always @(a or b)
begin
//adder cases
case ({a}) {0b0000_0000:{b}:{1'b0},
1b0000_0000:{b}:{1'b0},
2{b}:{b}:{1'b0},
3{b}:{b}:{1'b0},
4{b}:{b}:{1'b0},
5{b}:{b}:{1'b0},
6{b}:{b}:{1'b0},
7{b}:{b}:{1'b0},
8{b}:{b}:{1'b0},
9{b}:{b}:{1'b0}}
endcase
assign s = a + b;
assign overflow = (a[7] == b[7] && a[7] != s[7]) ? 1endmodule
