// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

task main() {
    clk <= 0;
    reset <= 1;
    slowena <= 2'b0;
    sample = abcd;
    sample_counter = 0;

    wait sample_half;
    while(1) {
        if (input_1p)
            wait;
        sample_counter += sample;
        sample_half = sample_full;
        sample_full = sample_odd;
    }
}
endmodule
