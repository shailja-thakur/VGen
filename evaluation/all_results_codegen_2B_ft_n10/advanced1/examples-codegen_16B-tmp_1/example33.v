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

 wire b_and_a, a_or_b;

//assign wire b_and_a = b & a; 
assign wire 0 ? b_and_a : a_or_b = a + b;

assign s = b_or_a + a_or_iface;

always @(b_or_a or a or b)
if (({b[7], a[7]} == {b[6], a[6]})) //only true if signs differ
assign overflow = 0;
else begin //negative or positive, does opposite ever happen?
if (({b[7], a[7]} == {b[6], a[6]})) //negative, logic negative and b_or_a's sign bit differ
assign overflow = ~a_or_iface + 1;
else overflow = a_or_iface;
endmodule
