// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// (Note that it is ok to decrement q when the ena input is high and q is 9
// because in this case q will become 0 in the next clock cycle.)

always @(posedge clk) begin
if (reset)
q <= 4'b0000;
// note: this assumes q < 10 in all cases
else if (slowena && (q < 9))
q <= q + 1;
else
q <= q;
end 

endmodule
