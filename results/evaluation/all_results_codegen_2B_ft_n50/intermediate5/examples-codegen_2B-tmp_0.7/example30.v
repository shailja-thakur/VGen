// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or reset)
begin
if (reset == 1'b1)
begin
out <= 0;
end
else if (load == 1'b1)
begin
out <= data;
end
else if (amount == 3'b010 || amount == 3'b011)
begin
out <= {data[0],data[7:1]};
end
else if (amount == 3'b100 || amount == 3'b101)
begin
out <= {data[1:0],data[7:2]};
end
else if (amount == 3'b110 || amount == 3'b111)
begin
out <= {data[2:0],data[7:3]};
end
else if (amount == 3'b111)
begin
out <= {data[3:0],data[7:4]};
end
endendmodule
