// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
initial begin
    q <= 9'b00000;
    clk <= clk;
    $nextPriority = 0;
    $timeout = 1;

    sc_start
    while ($timer_trigger_event(slowena, true))
{       
    if ($timer_trigger_event(slowena, false)) {
      q <= q + 1;
      clk <= clk;
    }
    q <= q.range(1..9);
    $vdd := ~slowena;
    stable_mix(q, $vdd);
} end
endmodule
