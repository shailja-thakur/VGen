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
// func specify how counter effects (https://decanongweb.com/circuits/faq/faq.html#3)
always @(posedge clk) begin
 if (reset) 
	begin
	q <= 4'd1;
	end
 else if (q == 4'd12) 
	q <= 4'd1;
 else if (q == 4'd0 || q == 4'd4 || q == 4'd6 || q == 4'd8|| q == 4'd10 || q == 4'd12)
	q <= q + 4'd1;
 end
 endmodule
//modified to write data to RAM
module RAM( CLK, W, R, W_INPUT, read_write, RESET, READY, data_out); 
input CLK, W, R, RESET, READY;
input signed [15:0] W_INPUT;endmodule
