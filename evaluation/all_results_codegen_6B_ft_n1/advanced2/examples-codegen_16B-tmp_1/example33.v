// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @ (posedge clk or posedge reset)
if ((reset) || (slowena == 1'b0))
q = 0;
else begin
if (q == 4'd9 & slowena == 1'b1)
q = 0;
else q = q + 1;
end

// On the negedge of the clock, do not alter q.
// Simply use a non blocking statement.

endmodule
