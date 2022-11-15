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
if (reset)
begin
// if load is high, out = data
if (load)
begin 
out = data;
end
else
begin
 //rotate the data until out is loaded
out = {data[6:0],data[7]}; 
if (amount[0])
begin
out = {data[7:0],data[7]};
out = {out[6:0],out[7]};
end
if (amount[1])
begin
out = {data[7:0],data[7]};
out = {out[6:0],out[7]};
out = {out[6:0],out[7]}; 
end
if (amount[2])
begin
out = {data[7:0],data[7]};
out = {out[end
end
end
end
endmodule
