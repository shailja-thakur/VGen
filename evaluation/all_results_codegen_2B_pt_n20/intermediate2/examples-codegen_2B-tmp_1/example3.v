// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
initial begin
    q = (reset) ? 1 : (clk == 0) ? (q + 1) : q + 2;
end
intrinsic void
ets_on_isr(void)
{
  now = es.tick();
  if (now == es.cyc[incr_clock]) {
    if (es.now == 0) {
      ++counters[0];
      if (counters[0] == 12) counters[0] = 1;
    } else if (es.now == 1) {
      ++counters[1];
      if (counters[1] == 12) counters[1] = 1;
    } else if (es.now == 2) {
      ++counters[2];
      if (counters[2] == 12) counters[2] = 1;
    }
    fr = 0endmodule
