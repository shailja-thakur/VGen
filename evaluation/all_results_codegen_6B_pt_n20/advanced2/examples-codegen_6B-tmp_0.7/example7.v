// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the negative edge of the clock:
// if q is 0 and reset is high, set q to 9.
// else if q is 9, set q to 0.

always @(posedge clk)
    begin
        if(reset)
            q <= 0;
        else if(slowena)
            if(q == 9)
                q <= 0;
            else if(q == 0)
                q <= 9;
    end

endmodule
