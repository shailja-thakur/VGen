// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
reg [3:0] q;
always inline
begin
  if (reset or stall)
    q <= 0;
  else if (slowena and q != 9 and ena)
    q <= q + 1;
  end else noop;
end;

// On the negative edge of the clock:
// if slowena is high, reset the counter to 0, because the IF requested an encode.
// otherwise, if the counter is busy and ena is high, reset the counter to 0,
// because the IF requested an encode.
always inline bool
advance_clk(
    always input clk,
    always input slowena,
    always input reset,
    always output ierr);
begin
  if (slowena) ppc4xx_set_status(ppc4xx_exception_num_errs, false);
  else if (ppendmodule
