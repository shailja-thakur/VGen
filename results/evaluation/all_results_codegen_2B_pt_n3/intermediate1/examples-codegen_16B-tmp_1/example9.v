// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Specify the signals types.
// Use bit as the basic unit.
// Use wires as intermediate doing nothing step.
// Don't use Void*.
assign sum = a ^ b;
assign cout 

// latch it - this is a combinational circuit!
endmodule
