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


wire sum_a_gt_b;
wire sum_a_lt_b;

wire sum_gt_max;
wire sum_lt_min;

assign sum_a_gt_b = ({a[7],b[7]}) > ({b[6:0], a[6:0]}); // found any number that exceeds the range of a and b

assign sum_a_lt_b = ({a[7],b[7]}) < ({b[6:0], a[6:0]}); // found any number less than the range of a and b

assign sum_gt_max = ({a[7],b[7]}>{a[6],b[6]}) && !sum_a_lt_b;

assign sum_lt_min = ({a[7],b[7]} < {a[6],endmodule
