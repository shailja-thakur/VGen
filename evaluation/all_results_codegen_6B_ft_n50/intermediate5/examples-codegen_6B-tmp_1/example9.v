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
	if (reset)//high at next positive clock edge
	begin	
	out = amount[2:0]<3'b110?data:data>>amount;
//	out = amount<3'b110?data:data<<amount;	
	end
	else if (load)
	out = amount[2:0]<3'b110?data:8'hzz;
end
endmodule
