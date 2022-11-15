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


assign s == (a[7:0] + b[7:0])
assign overflow ok == not (b[7:0] + a[7:0] > 127)








assign a sum 32-bit signed int
assign overflow 32-bit signed int
assign b sum 32-bit signed int
assign s sum 32-bit signed int
assign o sum 32-bit signed int

assign overflow ok smooth
assign overflow ok smooth init 1

module sum 32-bit signed int(init="00000000")
begin
  if (x = ( b[31:24] + a[31:24] ) > 127)
    init = "80008000" 
end
s = (b[31:24] + a[31:24] < -128 ? '1' * sizeof(b) : 0)   //x ? x :endmodule
