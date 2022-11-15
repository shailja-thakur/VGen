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


// Create modules for adding each of the 8-bit input a, b, and s, and for the output overflow.

// Create wires for each of the 8-bit inputs.
wire [7:0] a_w;
wire [7:0] b_w;
wire [7:0] s_w;
wire overflow_w;

// Create wires for the output overflow.
wire overflow;


// Create an instance of the modules for a, b, s, and overflow.

signed_adder_8bit SI_ADD1(.a_w(a_w), .b_w(b_w), .s_w(s_w), .overflow_w(overflow_w), .overflow(overflow));

// Create instances of the modules for the 8-bit input a, b, s, and overflow.

signed_adder_8endmodule
