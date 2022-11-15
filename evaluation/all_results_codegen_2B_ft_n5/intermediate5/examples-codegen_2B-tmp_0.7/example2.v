// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// assign out to data
always@(posedge clk)
if(reset)
out <= 0;
else if(load)
out <= data;
else if(amount == 3'b000)
out <= data << 1;
else if(amount == 3'b001)
out <= {data[1], data[0], data[7], data[7], data[6], data[5], data[4], data[3], data[2], data[1], data[0], data[7], data[7], data[6], data[5], data[4], data[3], data[2], data[1], data[0]};
else if(amount == 3'b010)
out <= {data[2], data[1], data[0], data[7], data[7], data[6], data[5], data[4], data[3],endmodule
