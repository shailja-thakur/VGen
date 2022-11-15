// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk or posedge reset)
begin
if (reset)
out = 8'b0;
else if (load)
out = data;
else if (amount == 0)
out = out;
else if (amount == 1)
out = {1'b0,out[7:1]};
else if (amount == 2)
out = {1'b0,out[7:1],1'b0};
else if (amount == 3)
out = {1'b0,out[7:1],1'b0,out[0]};
else if (amount == 4)
out = {1'b0,out[7:1],1'b0,out[0],1'b0};
else if (amount == 5)
out = {1'b0,out[7:1],1'b0end
endmodule
