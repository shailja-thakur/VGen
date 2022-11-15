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


// The following code implements an unsigned adder.
// You can use this code to design a signed adder.

wire carry_0, carry_1;
wire [7:0] sum;
wire signed_overflow;

///////////////////////////
// Create an 8-bit 2's complement number. //
///////////////////////////

genvar i;
generate
for (i = 0; i < 8; i = i + 1)
begin

	assign sum[i] = a[i] ^ b[i];

end
endgenerate

/////////////////////////////
// Create a carry bit for each sum bit. //
/////////////////////////////

genvar j;
generate
for (j = 0; j < 8; j = j + 1)
begin

	assign carry_0[j] = (sum[j] == 0);

endendmodule
