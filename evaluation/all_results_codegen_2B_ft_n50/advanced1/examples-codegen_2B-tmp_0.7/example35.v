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


wire [8:0] a_b;
wire [7:0] sum;

// assign a_b = a[7:0] + b[7:0]; 

assign a_b = {1'b0, a} + {1'b0, b};

// assign s = sum[7:0];
assign sum = a_b[7:0] + a_b[8];

assign overflow = (sum == {1'b0, 8'b10100000});

endmodule
