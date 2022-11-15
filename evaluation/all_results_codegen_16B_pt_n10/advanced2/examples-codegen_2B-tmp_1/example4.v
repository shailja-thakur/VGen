// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// In the latter case, q is incremented by 1.
 reg [3:0]q_error;
 assign q = (~reset ? q'b0 : q'b10)& (~q'b0);
 always @ *
 begin
 q_error = q'b10-1;
 if (~slowena)
 q_error = q'b10;
 end
 always @ (posedge clk) begin
 if (reset is true)
 q <= 'b0;
 else begin
 if (~slowena)
 q <= q_error;
 else
 q <= q'b11;
 end
 end

endmodule
