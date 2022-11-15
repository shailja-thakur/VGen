// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or posedge slowena)
wire q[3:0]; // each logical position can have a value of 01111

always @(posedge slowena)
// Test whether the first n '0's of the n-bit register are outsid the deleted range:
always @(posedge clk or posedge slowena)
$display("Calc. extract");
if (slowena == 1)
{
    $display_bits(q, 9);
}
else
{
    $display("EXTRACT: n =", n);
    $display("  Output range:  ");
    $display("  [ ", min_bit, ", ", max_bit, "]" );
    $display("  " , min_bit : "-" : ", ", max_bit : "- ");
    if (q < min_bit or q > max_bitendmodule
