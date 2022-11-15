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
case (reset)
1'b0: q <= 4'h0; //when reset is active, override output.
1'b1: if (slowena) begin
if (q == 4'd9)
q <= 4'h0; // if it hits 9, override again.
else
q <= q + 1'b1; // regular increment.
end
end

endmodule
