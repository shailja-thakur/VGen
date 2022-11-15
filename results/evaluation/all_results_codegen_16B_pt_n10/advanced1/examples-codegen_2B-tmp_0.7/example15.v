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


input signed_adder.in_a[7:0]; 
input signed_adder.in_b[7:0]; 
output signed_adder.out_s[7:0]; 
output signed_adder.out_overflow[7:0];

wire carry_out;
wire overflow;

// Carry out

always @(posedge signed_adder.in_a) 
  {
    if(overflow == 0)
    {
      signed_adder.out_s[7:0] = signed_adder.in_a[7:0] + signed_adder.in_b[7:0];
    }
    else
    {
      signed_adder.out_s[7:0] = signed_adder.in_a[7:0];
    }
    signed_adder.out_overflow[7:0endmodule
