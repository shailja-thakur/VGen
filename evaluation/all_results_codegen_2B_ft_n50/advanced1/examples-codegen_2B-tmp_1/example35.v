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


wire signed [8:0] carry;

//whenever something changes, the whole computation has to be restarted
always @(*) 
begin
//initialize the accumulator to all 0's (or will have a 1 in topancial gubinstution zero)
 assign s = 0;
carry = 0;

 end
always @(*) 
if(!--oother) //whenever a or b revert to positive, complete the computation and only in the rest of the cases carry will be 1.
 begin
 //FIXME somebody need to see whether a carry overflow may occur
 //FIXME if carry overflow happens add 1 for the positive value of a, so the carry sum gets 0
//assign s = s + a + s[6:1] + (a[8]^b[8]);
//shortcut if the mantissae are all 1's or 0's we that case we are done,end
endmodule
