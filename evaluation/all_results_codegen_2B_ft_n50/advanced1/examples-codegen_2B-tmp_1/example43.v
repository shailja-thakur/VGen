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


wire [7:0] b_overflow_no_lower_b;
wire b_overflow_lower_b;
wire [7:0] b_overflow;
wire b_overflow_sign;

// if top most bit is high the adder subtraction will result in a negative overflow
divider_top_bit_filter divider(.input_signal(a[7]), .output_signal(b_overflow_no_lower_b), .suppress_zero_signal(1'b1));

// divider_top_bit_filter takes in a signal input_signal and outputs the bit in the input that was equivalent to 0 and also the complement of the most significant bit to be subtracted

// subtract b_overflow_no_lower_b as it will remove the sign and potential 
// leading 0 from the sign bit of bendmodule
