// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
begin
if(reset)
	out <= 8'b11111111;
else if(load)
	out <= data;
else begin
	if(amount == 3'd0)
	out <= {out[6:0],out[7]};
	else if(amount == 3'd1)
	out <= {out[5:0],out[6]};
	else if(amount == 3'd2)
	out <= {out[4:0],out[5]};
	else if(amount == 3'd3)
	out <= {out[3:0],out[4]};
	else if(amount == 3'd4)
	out <= {out[2:0],out[3]};
	else if(amount == 3'd5)
	out <= {out[1:0],end
end
endmodule
