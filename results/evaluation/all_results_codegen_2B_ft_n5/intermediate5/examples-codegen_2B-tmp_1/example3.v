// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk)
begin
if(reset)begin
	out <= 1;
	end
else if(load)begin
	out <= data;
	end
else if (amount > 0)
	out <= {data[7] , data[6], data[5],data[4],data[3],data[2] , data[1] , data[0]};
else
	out <= {data[7] , data[6], data[5],data[4],data[3], data[2] , data[1] , data[0]};
end
endmodule
