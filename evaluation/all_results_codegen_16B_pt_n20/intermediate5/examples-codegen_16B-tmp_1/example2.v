// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign out = {data,(data << amount) | (data >> (amount+7))};
// assignment of load data {-1,0,1} as -1, do nothing as 0, 0 rotated register as 1
assign load_data = {-1, 0, 0, 1};
assign load_wait = { !load, !load, !load, !load };
always @(posedge clk or ~reset)
    if (!load) begin
    	if (reset) begin
    		out <= 0;
    	end
    	else begin
    		// 0 <= amount < 8 rotate_clock cycle
    		for (int i=7; i>=amount; i--) begin
    			// left rotate the data then shiftout the leftmost 8 bits
    			out <= ({data, (data << 1) | ((data & 0x80) >>end
end
end
endmodule
