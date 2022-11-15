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


wire [7:0]b_with_sign_extend; 
wire overflow;
assign b_with_sign_extend=(b[7])?(8{1'b1}):b;
wire overflow_temp1; 
wire overflow_temp2; 
wire s_extended;

signed_add_sub_pipe b_type1(.b({8{1'b0}}), b_with_sign_extend, .y(b_with_sign_extend), .sign_overflow_out(), .s_which_overflow(), .y_type());	// Changing signs

wire [7:0]new_input;
wire new_carry_in;
wire new_overflow_out;
wire [7:0]new_s;
//[8:0]x_temp = @(a, b);endmodule
