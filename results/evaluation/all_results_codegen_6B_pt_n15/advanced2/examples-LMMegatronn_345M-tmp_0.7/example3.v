// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The decision is true if ena is low, the output would be
// zero otherwise.
reg [1:0] q_in;

// For several channels
// these are actual so that the input scenario is greater than 0.
//

// Ports:
// CLK_SYS_SP_MISO
//
// ADC_SYS_SP_MOSI
// ADC_SYS_SP_SAD (VSS)
// ADC_SYS_SP_SS_0 (true)
// ADC_SYS_SP_SS_1 (false)
// ADC_SYS_SP_SS_2 (false)
// ADC_SYS_SP_SS_3 (false)
// ADC_SYS_SP_SS_4 (false)
// ADC_SYS_SP_SS_5 (false)

input clk_12mhz;endmodule
