// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
    always @(posedge clk, negedge reset)
        if (reset)
            q <= {5'd0, 3'd0, 0}; // don't touch
        else if (slowena)
            if (q != 9d)
                q <= (q + 1d);


// On the negative edge of the clock:
// On the false edge of ena: if reset is high, the output is
// upshifted to 9. Otherwise, the output is reset to 0.
// The upshifted_output output is 1 if output is 9 and 0 otherwise.
    wire [3:0] upshifted = 9'd1;
    always @(posedge clk, posedge reset)
        if (reset)
            q <= {5'd0, 3'd0, 0};
        else
            upshifted  <= q^4'd1;
endmodule
