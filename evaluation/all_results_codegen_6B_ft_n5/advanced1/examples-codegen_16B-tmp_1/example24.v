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


assign s[0] = a[0] ^ b[0]; 

genvar i;
generate
for (i=0; i<8; i=i+1)
begin: generate_adder

wire final_bit = a[i]&&b[i]&&s[i] || a[i]||b[i];

// positive route to adder and negative to add er
assign z[i] = s[i];
assign y[i] = 1'b0;

if (final_bit ==1'b0)
begin

assign weight = 8-i;

always @(weight)
begin
z[i] = z[i+weight];
y[i] = y[i+weight];
z[i+weight] = z[i] ? 1'b0:1'b1;end
end
end
endmodule
