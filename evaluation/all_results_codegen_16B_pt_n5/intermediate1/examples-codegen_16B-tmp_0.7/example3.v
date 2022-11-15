// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire cin, cout, sum;
wire carry_in, carry_out;

// compute sum = a + b + carry_in
assign sum = a + b + carry_in;
// compute carry_out = a + b + cin
assign carry_out = a + b + cin;

// compute cout = sum&carry_out
assign cout = sum & carry_out;

endmodule
