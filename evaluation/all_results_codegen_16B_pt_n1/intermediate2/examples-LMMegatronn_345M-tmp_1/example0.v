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
function [11:0] incr;
input incr;
input [3:0] decr;
reg [3:0] q;
begin
	incr = 0;
	q = 0;
	incr = 0;
end
endfunction

reg [11:0] mc [9:0];

integer i;
always @(posedge clk) begin
	if (reset) begin
		for (i = 0; i < 10; i = i + 1) begin
			mc[i] = 0;
		end
	end else if (incr) begin
		for (i = 0; i < 10; i = i + 1) begin
			mc[i] = 0;
		end
	end else begin
		if (!(&ii[3:1]) || &(raw)) begin
end
end
endmodule
