// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, a_plus_b, a_plus_b_carry_out, sum_out;

// This is the function that will run when we start the simulation.
always @(posedge clk)
begin
    // This is the input to the half adder.
    a_in <= a;
    b_in <= b;

    // This is the output of the half adder.
    sum_out <= a_plus_b;

    // This is the carry-out of the half adder.
    a_plus_b_carry_out <= a_plus_b_carry_in;

    // This is the sum of the two bits.
    sum <= a_plus_b_carry_out;
end

// This is the output port of the half adder.
assign cout = sum_out;endmodule
