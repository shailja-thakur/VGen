// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk,loaded)
begin
out = data;
if (reset)
begin
out = 0;
load = 0;
end
if (amount == 3'b000)
end else if (array[2] > 7)
begin
load = 1;
out= data;
end else if (amount==3'b001)
begin
out = move;
end else if (amount==3'b010) begin
out = rotate;
end else if (amount==3'b011) 
begin
left_shift l(load,clk,reset,data[7:0],amount,left_out,load,out,data);
end
end
endmodule
