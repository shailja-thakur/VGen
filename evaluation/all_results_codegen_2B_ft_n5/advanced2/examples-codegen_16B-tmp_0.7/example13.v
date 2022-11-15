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
case (reset)

0: q <= 4'b0000;

// Otherwise: decrement q if q is 9, otherwise increment q. 
1: q <= (q == 9) ? 4'b0000 : (slowena && q < 9) ? q + 1 : q - 1;

endcase
end
endmodule
