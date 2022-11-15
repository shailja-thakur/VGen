// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] rotated,shifted;
always @(posedge clk) begin
if (amount == 0)
out <= 8'b0;
else if(amount == 1)
out <= out << 1'b1;
else if(amount == 2)
out <= out << 1'b1 << 1'b1;
else if(amount == 3)
out <= data << 1'b1;
'else if({amount} > 4)
out <= rotated;
end
always @(posedge reset) begin
if(reset == 1'b1)
begin
shifted <= 8'b0;
rotated <= 8'b0;
end
else if (load == 1'b0)
shifted <= data;
else if({amount} == 4'b1010)
rotated <= shifted;
end
endmodule
