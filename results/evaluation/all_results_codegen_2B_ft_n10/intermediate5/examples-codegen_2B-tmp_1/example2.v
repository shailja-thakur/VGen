// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or posedge reset)
begin
if (reset == 1'b1)
out <= 0;
end
always @(posedge out)
begin
out <= 8'b00000000;
end
always@(posedge clk or posedge load)
begin
if (load == 1'b1)
out <= data;
end
always@(posedge out,posedge reset)
begin
if (reset == 1'b1)
out <= 8'b00000000;
end
endmodule
