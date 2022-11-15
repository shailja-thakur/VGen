// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always@(posedge clk, negedge reset)
  if(!reset) q <= 4'b0; // clock reset 
	else begin
		if(|q ) q <= q + 1'b1; // increase w/ this will increase clock
	 end

endmodule
