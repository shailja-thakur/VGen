// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//  When reset is high, q is always 0.
//

initial begin
    clk <= 1;
    slowena <= 1;
    q = 0;
    reg[3] <= q;
end;

initial begin
    while (slowena)
    {
        q[1] <= q[0] + 1;
        q[2] <= q[0] + 1;
        q <= q[0] + 1;
    }
end;
endmodule
