// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk)
begin
if (reset)
begin
out[7:0] <= data[7:0];
end
else
begin
if(load)
begin
out[7:0] <= data[7:0];
end
else
begin
case (amount)
3'b000: out[7:0] = {data[6:0],data[7]};
3'b001: out[7:0] = {data[4:0],data[7:1]};
3'b010: out[7:0] = {data[3:0],data[7:2]};
3'b100: out[7:0] = {data[2:0],data[7:3],data[7]};
3'b101: out[7:0] = {data[1:0],dataend
end
end
endmodule
