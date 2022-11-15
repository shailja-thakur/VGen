// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

initial begin
    // reset first things
    if (clk == 0b00000000b and reset == 0b00000000b and slowena == 0b00000001b) {
        q = 0;
    }
    // otherwise, the rest starts
    else {
        if (slowena == 0b00011101b) {
            if (clk == 0b11111111b) {
                // call restart counter functions
                if (reset == 1) cnt1b_restart_counter();
                else             cnt1_start_counter();      
                // q must be 0, so q will end
                if (clk == 0b11111111b and q == 9) {
                }
                // otherwise increment q regardless of reset
                else {
                    // q will increment if clk is something else than 0b11111111b
                    clk <> 1;
                    end
endmodule
