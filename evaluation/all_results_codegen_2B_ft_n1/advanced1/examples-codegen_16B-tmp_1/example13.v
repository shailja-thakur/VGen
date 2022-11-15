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


wire signed [9:0] d; 

//signed experiment A
wire s_op1, s_op2, s_add; 
wire [7:0] mux1, mux2; 
signed_add op1(a[7], b[7], 'b0, mux1[7], mux1[8], mux1[9]);
signed_add op2[7](a[6:0], b[6:0], mux1[9], mux2[7], mux2[8], mux2[9]);
led_mux mux3(a[7], b[7], mux2[8], s_op1, s_op2);
led_mux mux4(mux2[9], mux1[9], mux1[8], s, s_add);

endmodule
