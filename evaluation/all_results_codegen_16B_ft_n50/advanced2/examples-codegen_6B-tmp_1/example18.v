// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// When the output q reaches 9 
// go:
q <= do: q <= case True: slowena & q + 1 | q & 1 | slowena & q - 1 | 0 <= q;
when: false;

// On the negative edge of the clock:
// if ena is high, increment q, otherwise stop.
// Note that it might be more efficient to spin.
// logic: q <= case slowena & ena | slowena & q;

// The clock will be more sensitive
// than the case statements, so this may be best
// json: [0, 0, 7, 9]
endmodule
