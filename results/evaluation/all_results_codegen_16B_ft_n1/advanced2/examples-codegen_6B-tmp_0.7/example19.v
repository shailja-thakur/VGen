// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the output q is 9, then set q to 0 and increment the counter.
always @(posedge clk)
    if (reset)
    begin
        q <= 0;
    end
    else if (slowena)
    begin
        if (q < 9)
            q <= q + 1;
        else
            q <= 0;
    end
;

// On the negative edge of the clock:
// if slowena is high, set q to 0. 
// Otherwise, only decrement the output q if q is not 0.
// If q is 0 then set q to 9 and decrement the counter.
always @(negedge clk)
    if (slowena)
    begin
        q <= 0;
    end
    else if (q > 0)
    begin
        q <= q - 1;
    end
    else
endmodule
