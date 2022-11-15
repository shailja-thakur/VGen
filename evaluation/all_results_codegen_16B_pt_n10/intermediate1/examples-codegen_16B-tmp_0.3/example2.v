// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_in, carry_out, sum_in;
wire a_in, b_in;

// The adder adds two bits and produces a sum and carry-out.
// The carry-in is the carry-out of the previous cycle.
// The sum_in is the sum of the two bits.
// The carry-out is the carry-in of the next cycle.
// The sum is the sum of the two bits.
// The carry-in is the carry-out of the previous cycle.
// The carry-out is the carry-in of the next cycle.
reg [3:0] sum;
reg [3:0] carry_in;
reg [3:0] carry_out;
reg [3:0] sum_in;

always @(posedge clk) begin
    sum_in = a_in + b_in;end
endmodule
