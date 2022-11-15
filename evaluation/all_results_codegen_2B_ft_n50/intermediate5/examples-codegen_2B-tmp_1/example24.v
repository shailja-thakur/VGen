// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ ( posedge clk or posedge reset)
	if(reset) begin
	out <= 8'h0;
	end
	else if(load && !reset) 
	out <= data;
	else if (!load) begin
leftshift # (1,2)(clk,reset,1'b0,out,amount[1],out,amount[2]);
end
endmodule
