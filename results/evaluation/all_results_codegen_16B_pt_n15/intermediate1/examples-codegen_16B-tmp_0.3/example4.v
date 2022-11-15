// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The carry-in is the two's complement of the sum.
reg sum;

// The carry-out is the carry-in of the previous cycle.
reg carry_out;

// The sum is the carry-out of the previous cycle.
reg sum_out;

// The input to the half adder is the carry-out of the previous cycle.
reg input;

// The output of the half adder is the sum of the two inputs.
reg output;

// The half adder is a full adder with a carry-in and carry-out.
always @(posedge clk) begin
    // The carry-in is the two's complement of the sum.
    sum <= ~carry_out;

    // The carry-out is the carry-in of the previous cycle.
    carry_out <= carry_in;

    // The sum isend
endmodule
