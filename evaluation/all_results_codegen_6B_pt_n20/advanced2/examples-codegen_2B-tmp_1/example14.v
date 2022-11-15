// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//       EO is trade-off between on-dev, off-dev. 
//       Read the root C example/systems/rtccSample/rtcc.c; compare *tle and activate the sample port lines.

// On the rising edge of SLAPDIT:
// out[q-1] = out[q]; (if q>9, then 0)
// q5_out = q6_in; (if not the replica of q4, q5, q6)
// q4_out = slowena (ctrl read on bus clock edge)
// if slowena is low then q5_out could only be 0; (if only one peripheral axi bus interface available, slowena
// is low then q5_out can only be 0)
// nticks = clock cycles after q5 transition. They can run in non-inverted binary_adder;
// nticksendmodule
