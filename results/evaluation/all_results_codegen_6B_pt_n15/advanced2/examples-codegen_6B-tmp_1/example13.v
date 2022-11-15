// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
    begin
        if (reset == 1'b0) 
                q[0] <= 0;
        else if (slowena == 1'b1 && q[3:0] != 9)
			q[0] <= q[3:0] + 1;
    end

// It is okay (efficiently) for clock to floor to 0 when resetting since we do not
// count the 6 least significant bits.
always @(negedge clk)
    begin
        if (slowena == 1'b1)
			q[0] <= q[2:0] - 1;
    end

endmodule
