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
      if(reset)
        q <= 0;
      else
        if (slowena && q != 9)
          q <= q + 1;
  end

// Make the next increment happen in the cycle after the previous.
void countDec_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q) {
    q <= q + 1;

    // Disable the divider to turn off the clock chain.
    always @(posedge clk)
        begin
        slowena <= 0;
        q <= 0;

        case(q)

            // Count to 9, invoke a divider
            0:
            // negating the edge of the clock causes the change to be
            // done in the next cycle.
            reset <= 0;
            w <=endmodule
