// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(*) begin
    if( clk && slowena ) begin
        if( reset ) begin
            q <= 0;
        else if(12 <= q) begin
            q <= q + 1;
        end else
            q <= q << 1;
    end
end

// Scheduled for working on clock rising edge only.
// Here's the function body for the "working" implementation:

always @(*) begin
    if( clk ) begin
        if( 12 <= q ) begin
            q <= q + 1;
        end else begin
            q <= q << 1;
        end
    end else begin
        if( slowena ) begin
            q <= q + 1;
        end else begin
            q <= q << 1;
        end
    end
end

`;

block "fifo" (
    case("idx_end
endmodule
