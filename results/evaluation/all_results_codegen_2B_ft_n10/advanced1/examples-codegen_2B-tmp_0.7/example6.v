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



// A positive overflow occures when the most significant bits of a and b are high and the most significant bit of s is low
// A negative overflow occures when the most significant bits of a and b are low and the most significant bit of s is high
//if the abituses are equal then no overflow will occur.
 
assign overflow = ((a[7] & b[7]) & ~s[7]) | (~a[7] & ~b[7] & s[7]);

// There can be only one positive or negative overflow.

// The following code adds two 8-bit numbers and returns the number with the most significant overflow bit set

always @(*)
begin

case ({a[7],b[7]})

2'b00: s[7:0] = a[7:0] + b[7:0];

2'b01end
endmodule
