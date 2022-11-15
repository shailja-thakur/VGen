// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The output q is 8-bits wide, holding a decade starting with 0, inclusive.
primitive clk_RE: logic(clk, reset, ena);

primitive fastclk:inout();
primitive fastena:inout();
var fallthrough1: reg [3:0];

primitive clk_RE_contr: inout (clk, slowena, fastclk, fastena);

primitive op: (clk, slowena, fastclk, fastena, fallthrough1, count_slow);

begin
  // consider a 0-bit walker mean counter.
  feq const1 : count_slow(clk_RE, slowena, reset, q);
  // we were at the start of a decade. And now we're in the middle:
  fineure const2 : count_slow(clk_RE_end
endmodule
