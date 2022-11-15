// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Whenever the output q is 9, then the output q 
// is assigned to 0.

always @(posedge clk ) 
begin
if (~reset) begin
 q <= 'd0;
end

else begin
if (slowena && q != 'd9) begin
q <= q + 'd1;
end

else begin
q <= 'd0;
end

end

end
endmodule
