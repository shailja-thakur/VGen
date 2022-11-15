// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always (posedge clock)
    if (reset) q = 0;
    else if (slowena)
        if (q != 9) q = q + 1;
        else q = 0;
/* Synchronization signals:
 * slowena (input): high value indicates i/o is slave
 * clk (input): indicates decrementing operation
 * reset (input):  high value indicates counter is reset
 */

reg [2:1] last_ena;

function reset_count(input clk, input slowena, output reg [3:0] q);($timeparam slowena, clock, reset)
    accept_last_ena: fast release last_ena;
    accept_ena: fast dual enable fast always;
    accept_reset: fast release reset;
    wait_ena:     begin    loop
        if (slowena == 0) then 
            exitend
endmodule
