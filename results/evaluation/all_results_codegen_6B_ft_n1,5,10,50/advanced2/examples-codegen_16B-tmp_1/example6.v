// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// On the negative edge of the clock:
// if reset is high, do nothing. 
// Otherwise, decrement the value of the output q if the ena input is high. 

always @(posedge clk) begin
 if(reset) begin 
 q <= 4'b0; 
 end
 else begin
 if(slowena)begin
 if (q == 4'd9) begin
 q <=4'd0;
 end
 else begin
 q<=q+1;
 end
 end
 else begin
 if (q == 4'd0) begin
 q <=4'd9;
 end
 else begin
 q<=q-1;
 end
 end
 end
endendmodule
