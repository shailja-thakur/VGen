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


assign s[7]=a[7]^b[7]^s[7];

always@(a,b,s)
begin
case({a,b})
4'b0010:s<=s-1;
4'b0011:s<=s+1;
default:s=a+b;
endcase
end
assign overflow=(((a[7]+b[7]-'b1)^(a[7]-'b1)'))'b1;
// create an overflow signal if the most significant bit of sum s is 0 or 1 then the variable overflows is are true, overwritting the least significant bit of overflow with 1. 
 //when the most significant bit of a and b are high,if the most significant bit of s is tright,then the variable overflows becomes true andthe least significant bit of overflow overwrite with 1.


endmodule
