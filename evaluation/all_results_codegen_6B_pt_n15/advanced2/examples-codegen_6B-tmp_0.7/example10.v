// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
entity slow_decade_counter0 = make_decade_counter(
    clk, slowena, reset, q[0], slow_decade_counter0_slowena, slow_decade_counter0_reset);

// On the negative edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only decrement the output q if the ena input is high and q is not 0.
entity slow_decade_counter1 = make_decade_counter(
    clk, slowena, reset, q[1], slow_decade_counter1_slowena, slow_decade_counter1_reset);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 8.endmodule
