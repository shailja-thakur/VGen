// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
VARICOUNTRESET: ena <= 1 ;
VARICOUNTCLAUSE: q <= input clk & ena & slowena & _vreset;
ENASLOW: q <= (q + 1) & slowena & _vreset;

reg [3:0] countq;

countq <= 0 | < 9;

ENACTCLK: when{ counterq = slowq; } => countq <= slowq;
ENACTCLK: when{ countq = slowq; } => countq <= (slowq + 1);

reset <= inputs[6];
slowena <= input inputs[7];
_vreset <= slowena;

endmodule
