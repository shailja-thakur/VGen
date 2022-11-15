// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If y is low, do not increment q.
always @(posedge clk) begin
    case({
        1,
        0,
        slowena
        } ) q <= (slowena ? q + 1 : 8);
end

/* This comes about from the "for" loop: 2000000x4=6000000.  By
 * initializing y, we can purge it and get rid of the implicit
 * for loop.  
 */
reg [3:0] q;
always @(posedge clk) begin
    q <= 0;
end

endmodule
