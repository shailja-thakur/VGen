// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

begin
    q <= {0,0,0};
    bstn? slowena ## clk;
    $wait 0.5;
    q <= q + 1;
    q <= q + 1 / 10;
// On clk:
// count stitches each 10 ns, and stall synchronously until the counter goes up.
    $wait 0.125;
    q <= q + 1 / 10 + 1 / 100;
// At same time, count in the mode 'add' (each 10ns delay is counted).
    q <= (q > 0) & ($acc load / 10);
// When the sense raises quickly, count in the mode 'subtract' (decelerating in the sense).
    q <= ~(q > 0) & ($acc load -10);
    $sync_flop
    q <= q + 1 / 100;
// All done, ready toend
endmodule
