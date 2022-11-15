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



wire [7:0] add_a,add_b;
wire [7:0] add_result;
wire [7:0] add_overflow;

wire [7:0] sub_a,sub_b;
wire [7:0] sub_result;
wire [7:0] sub_overflow;

wire [7:0] and_a,and_b;
wire [7:0] and_result;

wire [7:0] or_a,or_b;
wire [7:0] or_result;

wire [7:0] xor_a,xor_b;
wire [7:0] xor_result;

wire [7:0] xnor_a,xnor_b;
wire [7:0] xnor_result;

wire [7:0]endmodule
