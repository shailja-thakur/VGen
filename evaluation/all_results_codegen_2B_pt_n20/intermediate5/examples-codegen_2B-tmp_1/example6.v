// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] data_temp;
reg out [7:0] out_temp;
assign out_temp = ~load & data_temp;
instance left_shift1x3
begin
assign data_temp = load & data_temp;
assign raw_out = data & data_temp;
assign raw_out_temp = (~load & ~out) & raw_out;
assign raw_out_t = out & raw_out_temp;
assign data = data_temp;
commit
end
endmodule
