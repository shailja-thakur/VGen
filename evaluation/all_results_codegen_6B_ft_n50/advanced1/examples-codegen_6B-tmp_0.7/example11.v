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

 

//internal variables
wire [7:0]b_d;
wire [7:0]s_d;
wire [7:0]overflow_d;


assign b_d = ~b; //complement b
assign overflow_d = a[7] + b_d[7]; //this is the xor of a and b

assign s_d = a + b_d; //add a and b
assign s = s_d[7:0]; //extract the final output
assign overflow = overflow_d[7]; //extract the final output



endmodule
