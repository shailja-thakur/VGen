// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or posedge reset)
begin
	if(reset) begin
	out <= 8'b0;
	end
	// out[7] always is the MSB bit
	else if(load) begin
	out <= data;
	end
	// left shift then rotate. The enable signal accordingly enables them
	else begin
	out[7] <= out[7-amount];
	out[7-amount] <= out[0];
	end
end
endmodule
