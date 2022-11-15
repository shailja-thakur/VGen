// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
initial begin
if(load=1) begin
out=data<<amount;
end
else begin
out=data_in[amount+1:0]<<amount;
end
end
endmodule
