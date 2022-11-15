// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk,posedge reset)
if(reset)
begin
mem<=0;
out <=0;
end
else if(load)
begin
out <=data;
end
else
begin
mem[4'b0000] <= data[0];
mem[4'b0001] <= data[1];
mem[4'b0010] <= data[2];
mem[4'b0011] <= data[3];
mem[4'b0100] <= data[4];
mem[4'b0101] <= data[5];
mem[4'b0110] <= data[6];
mem[4'b0111] <= data[7];
end
always@(*)
if(amount<=3'b111)
begin
out = mem[4'b0000] + mem[4'b0001]*(8end
endmodule
