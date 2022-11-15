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
repeat (0b000100)
if (load == 1)
begin
#if amount > 7
tmp1 = data;
out = tmp1;
#else
tmp1 = data[amount];
out = tmp1;
#endif
end
}
else // when load is low, shift out and out the data
begin
if (load == 1)
begin
#if amount > 7
out = data;
#else
out = data[amount];
#endif
end
end
endmodule
