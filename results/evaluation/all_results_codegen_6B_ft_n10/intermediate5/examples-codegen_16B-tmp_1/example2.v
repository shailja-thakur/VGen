// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk, negedge reset)
begin
if(!reset) out <= 8'b0;
if(load) out <= data;
else
begin
repeat (amount)
begin
out = out << 1;
out[0] = out[7];
end
end
end
endmodule
