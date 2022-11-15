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


wire signed [8:0] out;
wire [7:0] b_signed;
wire signed_a_signal, signed_b_signal;

assign signed [8:0] (b[7] == 1'b1) ? b_signed : ~b;
assign signed_a_signal = (a[7] == 1'b1) ? ~a : a; // get b_signed if b is signed and a is unsigned
assign signed_b_signal = (b[7] == 1'b1) ? ~b_signed : b_signed; // get a if a is signed and b is unsigned

assign out = $signed({1'b0, a}) + $signed({1'b0, b_signed});

assign s = out[7] ? ~out[6:0] + 1'b1endmodule
