// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] temp;
reg [7:0] left_shift;
always @(posedge clk,posedge reset )
begin
if (reset)
begin
temp <= 0;
out <= 0;
left_shift <= 0;
end
else
begin
if (load) temp <= data;
else
begin
left_shift <= {left_shift[6:0],temp[7]};
out <= {left_shift[7-amount],left_shift[7-amount-1:0]};
end
end
end
endmodule
