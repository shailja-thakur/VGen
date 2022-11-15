// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk slowena reset)
begin

	if(reset)
		q &lt;= 0;
        //if slowena and q == 9 :// don't increment
	else
        if(slowena &amp;&amp; (q != 9)) // start counter if
            q &lt;= q + 1;

end
endmodule
