// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

reg [3:0] regq; #0;

always @ (posedge clk or (reset and (slowena))) {
    if (reset) {
        regq <= 0;
    } else if (slowena) {
        regq <= regq + 1;
        if (regq >= 9) regq <= 0;           // class C alarms
    } else; // 0
}

// If enable is low, return the output q value. Otherwise, read q,
// increment it, and return the pre-incremented value.

reg [3:0] counts; bytes count;

always @ (posedge clk or (reset and (slowena))) {
    counts <= var_i;
    if (slowena) {
        counts <= regq;
        regq < 9 ? regq += 1 : regq <= 0;
endmodule
