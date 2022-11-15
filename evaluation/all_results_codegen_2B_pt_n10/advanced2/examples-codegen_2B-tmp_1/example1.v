// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
behavior table [rx_clk](
    when (clk = 0) // Not on a clock 
    | clk = clock_citation_table.not(report, rx_clk)
    end
    & slowena = 1
    & reset = 1
);
// On the positive edge of the clock:
// if reset is high, reset the output q to 0. Otherwise, only increment the output q if the ena input is high and q is not 0.
behavior table [cal_clk](
    when (clk = 0) // Not on a clock 
    | clk = clock_citation_table.not(report, cal_clk)
    end
    & slowena = 1
    & reset = 0
);

// On the clock cal_clk:
//clk = clock_citation_table.not(original_calendmodule
