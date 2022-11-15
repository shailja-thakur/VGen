// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk)
begin
if (reset)
	out <= 0;
	else if(load)
	begin
// shift based on amount
	if(amount==3'b011)
	begin
	out[7:0]<=data[7:0];
	out[0]<=data[7];
	end
	else if(amount==3'b101)
	 begin
	out[0]<=data[0];
	out[7:1]<=data[7:1];
	end
	else if(amount==3'b110)
	begin
	out[0]<=data[0];
	out[7:1]<=data[7:1];
	end
	else if(amount==3'b111)
	begin
	out[0]<=data[0end
end
end
endmodule
