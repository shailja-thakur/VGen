// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or posedge reset)
begin
if (reset)
	begin
	out = 0;
	end
else if (load)
	begin
	out = data;
	end
else begin
	case(amount)
	3'd0: out = out;
	3'd1: out = {out[6:0],out[7]};
	3'd2: out = {out[5:0],out[6:6]};
	3'd3: out = {out[4:0],out[5:5]};
	3'd4: out = {out[3:0],out[4:4]};
	3'd5: out = {out[2:0],out[3:3]};
	3'd6: out = {out[1:0],out[2:2]};
	end
end
endmodule
