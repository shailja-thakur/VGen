// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk | negedge reset)
    if (reset)
        q <= {3'b 000};
    else if (slowena && q <= 9)
    {
        if (clk)
            q <= q + 1;
        else
            q <= q;
    }
    else
        q <= {3'b 000};

// On the positive edge of slow clock:
// if reset is high, reset the output q to 0. 
// Time-sensitive on low frequency clock. Try using the Rate Parameter on a clkout?

always @(posedge slowclk | negedge reset)
    if (reset)
        q <= {3'b 000};
    else
        q <= q;

// If don't care ENa is high, reset q to 0.

always @(posedge clkendmodule
