// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
 if(reset) begin
 [3:0] q # (4) = 4'd0;
 end
 else begin
 if(ena && q < 4'b1001) q[3:0] = q[3:0] + 1; // Increment
 end
end

// Assign outputs to meet contract for count_least.v

assign count_least[0] = q[1];
assign count_least[1] = q[2];
assign count_least[2] = q[3];
assign count_least[3] = q[0];

endmodule
