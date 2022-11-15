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


// Reference: https://mathcscholarly.com/archives/?p=204 


always @(*) begin

if({a,b}==24'h00_0000 && {1'b0,{7'b0000001b,1'bx}}==23'h12_0000 || {a,b}==23'h00_0090)
s=23'h0000001a;
else if({a,b}==23'h12_0000 && {a,{7'b0000001b,1'bx}}==24'h14_0000|| {a,b}==24'h00_0010)
s={a==8'h00||{a,{7'b0000001b,1'bx}}==24'h0e_0010&&&b?8'h00:8'b0110010}+8'end
endmodule
