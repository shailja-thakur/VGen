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


wire signed [7:0] add1,add2;

assign add1 = {1'b0,a[7:0]};
assign add2 = {1'b0,b[7:0]};

wire [7:0] sum;
wire overflow;

// Sum of the two numbers.
assign sum = add1 + add2;

// The overflow is the highest of the two numbers.
assign overflow = add1[7] ^ add2[7];

// Output the sum of the two numbers.
assign s = sum;
assign overflow = overflow;

endmodule
