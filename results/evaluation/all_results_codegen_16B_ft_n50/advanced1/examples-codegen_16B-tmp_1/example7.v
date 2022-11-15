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



assign s = a + b;
assign overflow = ({a[7],a[7]} == 1 && {b[7],b[7]} == 1 && s[8] == 0) || ({b[7],b[7]} == 1 && s[8] == 0) ||
({a[7],a[7]} == 1 && {b[7],b[7]} == 1 && s[8] == 1) ? 1'b1 : 1'b0; // // The unsigned addition is less than {N-1, N-1} in magnitude. If the binary sum GTE the most significant bit of {N-1, N-1} then s must be >N-1.


endmodule
