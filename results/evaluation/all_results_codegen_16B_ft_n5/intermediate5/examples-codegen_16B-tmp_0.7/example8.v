// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk,negedge reset)
begin
if(!reset)
	out <= 8'h00;
else if(load)
	out <= data;
else begin
	out[7] <= out[0];
	out[6] <= out[7];
	out[5] <= out[6];
	out[4] <= out[5];
	out[3] <= out[4];
	out[2] <= out[3];
	out[1] <= out[2];
	out[0] <= out[1];
	out[amount-1] <= out[8-amount];
	out[8] <= 1'b0;
	end
end
endmodule
