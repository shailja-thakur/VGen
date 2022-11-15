// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// When the ena input is low, increment the output q only if the q is 0.

// Note: q is never checked to be low (never negated) because I don't want the case that q = 9 and slowena = 0, where q is never incremented.

always @ (posedge clk) begin
	if (slowena) begin

// On the negative edge of the clock:
// 1. Reset the output q to 0 if the input q is 9.
// 2. If the input q is 1 and the input clock is 1, q is incremented (i.e. the next state is passed through)
// NOTE: Because the q gets effectively incremented at the same time as the ena itself, it is important to decrypt the ena bit to
// avoid tripping softwares that will cancel out self-lock. Please let me know if you come up with different solutions.end
end
endmodule
