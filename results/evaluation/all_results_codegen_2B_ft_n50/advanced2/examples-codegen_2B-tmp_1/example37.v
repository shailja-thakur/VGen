// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// No decrements in q in between ouptut reset and the sensitivity list. 

always@(posedge Clk) begin
	if (SlowEnA && (q<=9) && reset) q <= q + 1;
end
endmodule
