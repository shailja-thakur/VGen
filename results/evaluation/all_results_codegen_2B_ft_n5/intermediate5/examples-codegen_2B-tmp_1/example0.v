// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
begin
if(reset==0)
out = 0;
else
case(amount)
0: out = data;
1: out = {data[6:0],data[7]};
2: out = {data[5:0],data[6],data[7]};
3: out = {data[4:0],(data[5]ors data[6]),data[7]};
4: out = {data[3:0],(data[4]ors data[5]),data[6],data[7]};
5: out = {data[2:0],(data[3]ors data[4]),(data[5]ors data[6]),data[7]};
6: out = {data[1:0],(data[2]ors data[3]),(data[4]ors data[5end
endmodule
