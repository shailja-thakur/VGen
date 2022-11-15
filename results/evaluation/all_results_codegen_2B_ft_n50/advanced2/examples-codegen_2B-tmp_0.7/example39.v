// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// Note: q has to be 4 bits, because only 4 counters are used.

// For the Q_converter_to_Q module, for input, we have to take care of the
// negative edge. If the ena input is high in the negative edge, then
// Q_converter_to_Q will add 1 to its output. If reset is high, then
// Q_converter_to_Q will reset its output to 0.

always @(posedge clk)
begin
if (reset)
q <= 0;
else if (slowena)
if (q != 9)
q <= q + 1;
else
q <= 0;
end
endmodule
