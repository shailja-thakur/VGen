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
if(reset) q=4'd0;
else begin
if(q ==4'b10010 && slowena==1'b1) q=4'd1;
end
end

// if reset is high, output should always 0.
// Otherwise, only decrement the output q to a0 if the ena input is high and q is 1.
always @(posedge clk) begin
if(reset) q=4'd0;
else begin
if(q ==4'b0001 && slowena==1'b1) q=4'd0;
end
end

endmodule
