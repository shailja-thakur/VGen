// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always(clk + slowena + reset)
  begin
    if (reset == 1'b1) q <= 0;
    else if ({
            countcycle(clk, slowena);
          })
    begin
      q <= q + 1;
    end
  end
;

//resets count and countflag
mod clk2(
    output clk,
    input clkslowena,
    output clkdelayen,
    output slowena_tx, 
    input slowena_reset, 
    input slowena_reseten,
    input slowena_ackstb,
    input slowena_ack,
    output act_slowena)
;

always(clkslowena.posedge) begin
        if({
            slowena_reseten == 1'b0 and slowena_ackstb == 1'b0 andend
endmodule
