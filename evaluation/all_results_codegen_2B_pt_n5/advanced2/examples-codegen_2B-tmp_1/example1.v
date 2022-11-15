// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
    if (!(slowena) && reset) q[0] = 0;
    if (slowena & (memory_2[0] << 6 & 0x6) ) q[0] = (q[0] + 1) & 0xf;
    if (slowena & (memory_2[0] << 5 & 0x1) ) q[1] = (q[1] + 1) & 0xf;
    if (slowena & (memory_2[0] << 4 & 0x2) ) q[2] = (q[2] + 1) & 0xf;
    if (slowena & (memory_2[0] << 3 & 0x8) ) q[3] = (q[3] + 1) & 0xf;
end

// On the negative edge of the clock:
// if enendmodule
