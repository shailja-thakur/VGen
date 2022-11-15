// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The carry-out bit is computed in the carry_in variable.
reg [1:0] carry_in;

// The output sum is computed in the sum variable.
reg [3:0] sum;

// The half adder adds two bits to produce a sum and carry-out.
always @(posedge clk) begin
    // The carry-out bit is computed from the two inputs and the carry-in state.
    carry_in <= a[0] + b[0] + carry_in;

    // The output sum is computed from the two inputs and the carry-in state.
    sum <= a[3:0] + b[3:0] + carry_in;

    // The carry-in state is passed on to the next cycle.
    cout <= carry_in;
end

// This is the output driver. It receives theendmodule
