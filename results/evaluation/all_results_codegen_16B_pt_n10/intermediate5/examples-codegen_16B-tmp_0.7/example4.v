// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
begin
	if(reset == 1)
	begin
		out <= 0;
	end
	else if(load == 1)
	begin
		out <= data;
	end
	else
	begin
		if(amount == 0)
		begin
			out <= data;
		end
		else if(amount == 1)
		begin
			out <= data << 1;
		end
		else if(amount == 2)
		begin
			out <= data << 2;
		end
		else if(amount == 3)
		begin
			out <= data << 3;
		end
		else if(amount == 4)
		begin
			out <= data << 4;
		end
		else if(amount == 5)
		begin
			out <= data << 5;
		end
		elseend
end
endmodule
