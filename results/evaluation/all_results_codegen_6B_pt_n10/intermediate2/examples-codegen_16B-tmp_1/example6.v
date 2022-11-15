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
always @ (posedge clk) begin
 if (reset) q <= 4'b1; 
 else 
	 begin
	 case (q)
	 4'b1100: q <= 4'b1;
	 default: q <= q + 4'b1;
	 endcase
	 end 
endmodule
