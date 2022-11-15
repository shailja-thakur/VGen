// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge reset or negedge clk)
if(reset)
begin
out <= 0;
end
else if (load)
begin
out <= data;
end
else
begin
for (int i = 0; i<amount; i=i+1)
begin
out[7] <= out[0];
out[6] <= out[7];
out[5] <= out[6];
out[4] <= out[7];
out[3] <= out[4];
out[2] <= out[5];
out[1] <= out[4];
out[0] <= out[3];
end
end
endmodule
