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


wire [8:0] carry_buf_a; 
wire [8:0] carry_buf_b;

wire [7:0] result_sum_a; 
wire [7:0] result_sum_b;

wire [7:0] result_sum; // the final result that will be added to s
wire overflow_a; 
wire overflow_b;

fulladder adder_a(a[7:0], b[7:0], 1'b0, carry_buf_a[8:1], result_sum_a[7:0]);
fulladder adder_b(a[7:0], b[7:0], 1'b1, carry_buf_b[8:1], result_sum_b[7:0]);

wire carry_sum_ca;
wire carry_sum_cb;

endmodule
