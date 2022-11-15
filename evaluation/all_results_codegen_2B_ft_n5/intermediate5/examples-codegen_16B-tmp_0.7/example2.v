// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk, posedge reset)
begin
if(reset)
begin
out <= 8'b00000000;
end
else
begin
if(load)
begin
out <= data;
end
else
begin
out <= {data[7],data[7:amount]};
end
end
end
endmodule
