// Build a decade counter that counts from 0 through 9, inclusive, with a period of 10. 
// The reset input is synchronous, and should reset the counter to 0. 
// The slowena input indicates when the counter should increment. The counter should stay paused otherwise

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q
    );

    always @ (posedge clk) begin
        if (reset) q <= 4'd0;
        else if (slowena) begin
        	if (q == 4'd9) q<= 4'd0;
        	else q <= q+4'd1;
        end
    end

endmodule