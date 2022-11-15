// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Otherwise, set q to 0.

always @(posedge clk)
    begin
        if (reset)
            q &lt;= 4'b0000;
        else if (slowena &amp;&amp; q != 9)
            q &lt;= q + 4'b0001;
        else
            q &lt;= 4'b0000;
    end

endmodule
