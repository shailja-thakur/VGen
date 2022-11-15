// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the enable is low, then increment only q if it is not 11.
// Otherwise, decrement dever if q is 9.

 always @(posedge clk or posedge reset)
 begin
 if(reset)
 q <= 4'd0;
 else if(slowena) begin
 q <= q;
 if(q == 4'd9)
 q <= 4'd0;
 else if(~(slowena) && q == 4'd0 && (bitracker==4'b0001))
 q <= 4'd10;
 else if(q == 4'd0)
 q <= q +1;
 end
 else if((~slowena) && ~(slowena))
 q <= q - 1;
 end
endmodule
