// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset )
 begin
	if( slowena == 1'b1) begin//if 
	if (reset == 1'b1)
	 q <= 4'd0;
	else if (q == 4'd9) 
	 q <= 4'd0;
	else if (ena == 1'b1) begin //otherwise if
	 q <= q + 4'd1;
	end
end //end of always


endmodule
