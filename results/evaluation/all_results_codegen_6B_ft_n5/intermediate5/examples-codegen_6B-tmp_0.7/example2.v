// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out_d;
always@(posedge clk)
	begin
	if(reset)
	begin
	out<=8'b0;
	out_d<=8'b0;
	end
	else if(load)
	begin
	out<=data;
	out_d<=out;
	end
	else
	begin
	out_d<={out_d[6:0],out_d[7]};
	out<={out_d[7],out_d[6:1]};
	end
	end
endmodule
