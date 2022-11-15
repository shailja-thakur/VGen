// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset)
    if (~reset)
        q <= ([3:0] default "0");
    else
        if (slowena)
            if (q != 9)
                q <= ([3:0] default " ");
            else
                q <= ([3:0] default "1");
        else
            q <= ([3:0] default "0");
// On the negative edge of the clock:
// For the first or second transition after the ena input goes high:
// Yes, reset it to 00.

always @(negedge slowena)
    if (q == 9)
        q <= ([3:0] default "0");
    else
        q <= ([3:0] default " ");

endmodule
