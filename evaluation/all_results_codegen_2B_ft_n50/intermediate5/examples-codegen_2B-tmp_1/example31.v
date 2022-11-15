// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
begin
	if (reset)out <= 0;
	else begin
	#5 if (load) out <= data;
	else begin
	for (integer i = 0;i < 8;i = i + 1) 
	begin
	out [i] <= out[8-i];
	end
	end
end
end
endmodule
