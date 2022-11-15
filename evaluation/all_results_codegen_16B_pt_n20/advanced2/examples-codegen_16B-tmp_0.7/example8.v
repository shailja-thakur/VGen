// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Increment q by one if the ena input is high and q is less than 9.
always @(posedge clk) begin
    case (reset)
    default: q <= 0;
    endcase
    case (slowena)
        if (reset) q <= 0;
        else if (q == 9) q <= 0;
        else if (clk) begin
            if (q < 9) q <= q + 1;
            if (q == 9) begin
                q <= q + 1;
            end
        end
    endcase
end

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only decrement the output q if the ena input is high and q is not 0.
// Decrement q by one if the ena input is high and q is not 0.
endmodule
