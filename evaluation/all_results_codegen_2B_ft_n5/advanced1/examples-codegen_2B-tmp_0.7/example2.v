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


// Implement the adder
wire [7:0] a_out;
wire [7:0] b_out;
wire overflow;
wire [7:0] s_out;

// add a and b using the logic of the ALU
alu_8bit alu_add(a, b, 1'b0, a_out, b_out);

// add a and b using the logic of the ALU
alu_8bit alu_sub(a, b, 1'b1, a_out, b_out);

// use a and b to determine the overflow
comparator_8bit comparator_add(a, b, 1'b0, 1'b0, overflow);

// use a and b to determine the overflow
comparator_8bit comparator_sub(a, b, 1'b1, 1'endmodule
