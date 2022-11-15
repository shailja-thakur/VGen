// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// Note: slowena is a slow enable; an edge of slowena is created
// every 10 clock cycles.

// Note: clk is a fast clock; an edge of clk is created every clock.

// Note: The clock is positive edge triggered.

always @(posedge clk)
begin
    if (reset)
        q &lt;= 0;
    else if (slowena &amp;&amp; q &lt; 9)
        q &lt;= q + 1;
end

endmodule
