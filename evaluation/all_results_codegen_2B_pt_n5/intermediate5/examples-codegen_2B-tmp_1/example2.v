// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (clk, reset)
begin
// when out0 is higher than calculations,
// roll out the value reinputed to left shift amount and rotate amount bits (out0 roll1)
// this can be combined with data only if the result is less than MODULAR
if ( ~out[1] <= 0b1111 )
begin
out[1:0] = leftH(out[0],out[1],out[1],amount);
if ( load~load )
begin
out[1] = left(out[1],0b1111);
out[2:0] = data_out;
out[3:0] = left(data,0b1111);
end
end
else
begin
out[1:0] = data_out;
out[2:0] = left(amount,0b1111);
end
end
end
endmodule
