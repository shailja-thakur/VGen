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


// if the addition is a signed overflow the answer has to be changed from the most-significant-bit signed value to the residual value.
// Most significant-bit adder will be {overflow, zeros} for negative results and unary /> for positive results

// see




assign overflow = b[7] ^ a[7] & ^a[7] & b[7];
assign s = a ^ b;

//assign serial_add(...);

always @*
begin

//always assign {s, overflow} = a + b + overflow_signal;

//serial_add(a, b, overflow, overflow_signal, zeros_zeros);// version 1

serial_add sa(a[7:0], b[7:0], overflow[0], zeros_zero_operation[0], carry[0]);
repeat (end
endmodule
