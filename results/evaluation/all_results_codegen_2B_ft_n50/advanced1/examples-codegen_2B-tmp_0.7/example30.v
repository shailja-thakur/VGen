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



// Use logic gates to connect the two adders together. 
always @(*) 
if (a > b) 
begin 
s <= a - b; 
if (s[7] == 1'b0) 
overflow <= 1'b1; 
else 
overflow <= 1'b0; 
end

if (a < b) 
begin 
s <= b - a; 
if (s[7] == 1'b1) 
overflow <= 1'b1; 
else 
overflow <= 1'b0; 
end
endmodule
