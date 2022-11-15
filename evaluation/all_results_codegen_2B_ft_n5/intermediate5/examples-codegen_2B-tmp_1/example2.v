// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] temp;
always@(posedge clk,posedge reset)
begin
	if(reset)
	begin
	temp<=0;
	out<= 0;
	end
end
always@(posedge clk,posedge reset)
begin
	if(reset)
	begin
	out <= 0;
	end
if(load)
	out <= data;
else
begin
	out = temp[7:0];
	temp = {temp[6:0],1'b0};
end
end
endmodule
