// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or (reset & !slowena))
    if(start)
    {
        if(reset) q <= 0;
        else if(!(ena & q == 9))
            q <= q + 1;
    }

// Now that the decade counter is set up, decrement the decade counter and set print
// to true so we get an accurate count of the number of edges that fall during the
// decade.

(* print = true)

// Pause the clock to test this node behavior.

process(clk, slowena, reset)
{
    if(reset) reset_count = count = global counter = 0

         // Q must hold 0.
         q <= 9

        // The falling edge of progressively higher dates must be counted by q.
        start <= count_slow.posedge
        => assume(q > 0endmodule
