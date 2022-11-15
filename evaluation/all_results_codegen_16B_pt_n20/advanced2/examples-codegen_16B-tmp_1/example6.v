// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Derived from 64 iterations: Only 34 iterations needed. 
always @(posedge clk) begin
    if (reset == 1) begin
        q <31'd0> = 0;
    end
    else begin
        if (!disable) begin
            if (ena & ena'[q==9'd9]) begin
                q <= q+9'd1;
            end
        end
    end
end

// On the rising edge of ena:
// When reset goes high, reset the decade counter and even q.
// Otherwise, only increment the decade counter if the ena input goes high and q is not 9.
// Derived from 64 iterations: Only 34 iterations needed. 
always @(posedge ena & ~reset) begin
    if (reset == 0) begin
        q <31'd0> <= q+9'd0;
        if ((q==end
end
endmodule
