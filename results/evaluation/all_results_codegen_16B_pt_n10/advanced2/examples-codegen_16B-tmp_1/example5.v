// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Return the 16 bit integer represented by 0q01221122.

always @(posedge clk) begin: 
    if reset == 1'b1) begin 
        q <= 0;
    end else begin 
    if (slowena == 1'b0) begin
        case (3'd0) begin
            q <= q + 1;
            if q == 9'b0) q <= 3'b0;
            else end
            case (3'd1) begin
                q <= q + 2;
                if q == 9'b0) q <= 3'b1;
                else end
            end 
        end
    end
end

endmodule
