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
if(reset)
out <= 8'b0;
else if(load)
out <= data;
else
begin
out[7] <= data[0];
out[6] <= out[7];
out[5] <= out[6];
out[4] <= out[5];
out[3] <= out[4];
out[2] <= out[3];
out[1] <= out[2];
out[0] <= out[1];
out[7-amount] <= out[0];
end
end
endmodule
