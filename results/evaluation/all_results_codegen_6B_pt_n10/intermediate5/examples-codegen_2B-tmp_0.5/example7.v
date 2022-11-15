// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or posedge reset)
begin
if (reset)
out <= 0;
else if (load)
out <= data;
else
begin
case(amount)
3'd0: out <= {data[7:4],data[3:0],data[7:4],data[7:4],data[3:0],data[7:4],data[7:4],data[7:4],data[7:4],data[7:4],data[7:4],data[7:4],data[7:4],data[7:4],data[7:4],data[7:4],data[7:4]};
3'd1: out <= {data[7:0],data[7:0],data[7:0],data[7:0],data[7:0],data[7:0],dataend
end
endmodule
