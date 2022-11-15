// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// this selects according to the column of the switch
always @(posedge clk)
	begin 
	if (reset)
	begin
	out = 8'b00000000;
	end
	if (load)
	begin
	out = data;
	end
	else 
	begin 
	case(amount)
	3'd0: out = out;
	3'd1: out = {out[0],out[7:1]};
	3'd2: out = {out[1:0],out[7:2]};
	3'd3: out = {out[2:0],out[7:3]};
	3'd4: out = {out[3:0],out[7:4]};
	3'd5: out = {out[4:0],out[7:5]};
	3'd6:end
end
endmodule
