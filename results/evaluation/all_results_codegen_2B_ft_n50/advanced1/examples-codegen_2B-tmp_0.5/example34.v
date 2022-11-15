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



// The output is sign extended to 8 bits, a is sign extended to 8 bits, b is sign extended to 8 bits
wire [8:0] s_sign_extended_a;
wire [8:0] s_sign_extended_b;
wire [8:0] s_sign_extended_s;

// The output overflow is sign extended to 8 bits, a is sign extended to 8 bits, b is sign extended to 8 bits
wire [8:0] overflow_sign_extended_a;
wire [8:0] overflow_sign_extended_b;
wire overflow_sign_extended_overflow;

// The sum is sign extended to 8 bits, a is sign extended to 8 bits, b is sign extended to 8 bits
wire [8:0] sum_sign_extended;

// The sum is sign extended to 8 bits,endmodule
