// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If slowena is high and q is zero, set q to 0 also.
// Finally, only decrement q by 1 if q is non-zero and its output is not high.
always #1 begin 
    if (reset) {
        q <= "00";
    } 
    else if (!(q == 9 & ena) & !(!slowena & q == 0)) {
        q <= q + "100" & ?("00");
    }
    else if (slowena  & q == 0) q <= "00";
    else if (q >= 1 && !(q == 1 & qrnd)) q <= q - 1 & ?("10");
    else q <= "00";
end

//makernd generate always @(posedge clk [1:0]) begin
//    qrnd <= (ena & q) ? "1" : "endmodule
