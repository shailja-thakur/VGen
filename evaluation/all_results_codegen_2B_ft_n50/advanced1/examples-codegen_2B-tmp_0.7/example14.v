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

 
// Create wires to connect the adder and subtractor

wire [7:0] wire_a;
wire [7:0] wire_b;
wire [7:0] wire_sum;
wire [7:0] wire_diff;
wire [7:0] wire_overflow;

// Create an adder and subtractor

add_sub_8bit adder(.data_a(a),
 .data_b(b),
 .data_sum(wire_sum),
 .data_diff(wire_diff)
);

subtract_8bit subtractor(.data_a(a),
 .data_b(b),
 .data_diff(wire_diff),
 .data_sum(wire_sum)
);

// Create a two-bit comparator to determine if overflow occured

comparator_2bitendmodule
