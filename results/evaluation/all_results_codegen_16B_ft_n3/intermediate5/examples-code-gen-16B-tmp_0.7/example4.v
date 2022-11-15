// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits
reg [7:0] rotatedata;
always @(posedge clk or negedge reset)
begin
if(!reset)
begin
out <= 0;
rotatedata <= data;
end
else if(load)
begin
out <= rotatedata;
end
else begin
rotatedata[7:amount] <= rotatedata[7:amount] ^ rotatedata[0];
rotatedata[0] <= rotatedata[amount];
end
end
endmodule
