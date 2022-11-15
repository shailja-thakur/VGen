// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
behavior count_fast(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);
endbehavior

module count_fast(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// bool clock_busy indicates the clock is high and it is active.
// Note: slot $4 inserted to enable fast clock. $4 indicates CLS signal.
method clock_busy();
signal cls:clk'clock_busy;
endmethod

// After bufram logical signals:
// bufram:CLS_OQ_BITS times port() to get the bit of the new latch value. 
// bufram:LSW_OQ_BITS times port() to get the new low-bit for the next LSW of hla.endmodule
