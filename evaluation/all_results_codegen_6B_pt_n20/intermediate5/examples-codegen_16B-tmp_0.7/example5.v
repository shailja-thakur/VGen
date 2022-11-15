// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk or reset)
begin
if(reset) begin
	out<=8'h00;
	end
	else begin
	if(load)
	out<=data;
	else
	out<={out[6:0],out[7:1]};
	if(amount>0) begin
	out <= out << amount;
	end
	else if(amount<0) begin
	out <= out >> -amount;
	end
	end
end
endmodule
