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
	// wire [1:0] toggle;
always @ (posedge clk) begin
	if (reset) begin
	q <= 4'b1111;
	// toggle <= q;
	end 
	else if (q == 4'b1210) begin
	q <= 1'b1;
	// toggle <= 1'b1;
	end
	else begin 
	q <= q + 1'b1;
	// toggle <= q;
	end 
	// toggle <= {toggle[1:0], q[3:1]};	
end
endmodule
