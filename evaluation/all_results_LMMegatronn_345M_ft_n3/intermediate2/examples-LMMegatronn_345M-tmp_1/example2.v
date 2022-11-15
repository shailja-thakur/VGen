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
always@(posedge clk , posedge reset) 
begin
	if (reset) begin
		q=1'b0 ;
	end
	else begin
		if (q == 1) begin
			q=1'b1 ;
		end
		else begin
			q=1'b0 ;
		end
	end
	C monitor(.clk(clk), .reset(reset), .q(q) , .enable(enable) , .q(q_enable) , .enable_n(enable_n) , .q_enable_n(q_enable_n) );
end
endmodule
