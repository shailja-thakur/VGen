// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
begin
    if (slowena) {
        q[3] = q[3] + 1;
    } else if (reset && q[3] == 9) {
        q[3] = 0;
    }
end

// On the negative edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 0.
always @(negedge clk)
begin
    if (slowena) {
        q[3] = q[3] - 1;
    } else if (reset && q[3] == 0) {
        q[3] = 9;
    }
end
endmodule
