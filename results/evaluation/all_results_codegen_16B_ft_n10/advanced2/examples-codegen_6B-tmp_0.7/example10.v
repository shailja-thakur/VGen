// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Write the new value of q to the output gate.
always @(posedge clk)
    if (reset == 1'b1) begin
        q <= 0;
    end else 
        if (slowena == 1'b1 && q != 9) begin
            q <= q + 1;
        end

// On the negative edge of the clock:
// If ena is high, reset the output q to 9.
// Otherwise, only decrement the output q if q is not 0.
// Write the new value of q to the output gate.
always @(negedge clk)
    if (slowena == 1'b1) begin
        q <= 9;
    end else 
        if (q != 0) begin
            q <= q - 1;
        end

// On the positive edge of the clock:
// Reset the output q to 0endmodule
