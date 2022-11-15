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
 if(reset) // active low by default
 q <= 4'd0;
 else begin // not reset
 if(q == 4'd9 && slowena == 1'b1) // if the enable is on q should incr
 q <= 4'd0;
 // increment if ena is high and the current value is less than 9
 else if(slowena == 1'b1 && (q < 4'd9)) 
 // increment if ena is high and this count is less than 9
 q <= q + 1'd1;
 end
 end

endmodule
