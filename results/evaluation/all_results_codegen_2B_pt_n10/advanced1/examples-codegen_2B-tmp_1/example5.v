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


signal overflow;



// Outputs a and b before and after the addition

signal [7:0] add;
signal [7:0] sum;
signal [7:0] a_new;
signal [7:0] b_new;

// sigmas to store the bits in those signals
signal bit s_add;
signal bit s_sum;
signal sinverted bit s_a_new;
signal sinverted bit s_b_new;


input [7:0] add_value;
input [7:0] sum_value;


wire signal_value;

// The following procedure fixes the bit of the adder outputs.
// The results are inverted.

function add_output_fix(input [7:0] a,
    input [7:0] b,
    output [7endmodule
