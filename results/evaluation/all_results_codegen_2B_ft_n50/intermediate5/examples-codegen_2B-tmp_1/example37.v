// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// and update the data signal
always @(posedge clk) begin
if ( load == 1'b1 ) 
	out = data;
else if ( amount <= 2'b00) begin
	out[0] = data[0];
	out[1] = data[1];
	out[2] = data[2];
	out[3] = data[3];
	out[4] = data[4];
	out[5] = data[5];
	out[6] = data[6];
	out[7] = data[7];
	data = {out[7],out[6],out[5],out[4],out[3],out[2],out[1],out[0]};
	end
else begin
	out = { out[6], out[5], out[4], out[3], out[end
end
endmodule
