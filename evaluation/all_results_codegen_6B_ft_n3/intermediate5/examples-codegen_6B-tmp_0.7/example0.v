// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk)
	begin
	if(reset)
	begin
	out = 0;
	end
	else if(load)
	begin
	out = data;
	end
	else if(amount == 3'd0)
	begin
	out = out;
	end
	else if(amount == 3'd1)
	begin
	out = {out[6:0],out[7]};
	end
	else if(amount == 3'd2)
	begin
	out = {out[5:0],out[6],out[7]};
	end
	else if(amount == 3'd3)
	begin
	out = {out[4:0],out[5],out[6],out[7]};
	end
	else if(amount == 3'd4)
	begin
	out =end
end
endmodule
