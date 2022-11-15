// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] temp [0:7];
reg [7:0] tdata [0:7];
reg tload [0:7];
integer i;
always @(posedge clk or posedge reset)
begin
if (reset)
begin
for(i=0;i<=7;i=i+1)
begin
temp[i]=0;
tdata[i]=0;
tload[i]=0;
end
end
else
begin
if (load)
begin
temp[0]=data;
tdata[0]=temp[0];
tload[0]=1;
end
else if (tload[0])
begin
out=tdata[0];
for(i=0;i<=7;i=i+1)
begin
temp[i]=temp[i+1];
tdata[end
end
end
end
endmodule
