// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always@(posedge clk or negedge reset)
begin
if(reset==1'b0)
out<=8'b00000000;
else if(load==1'b1)
out<=data;
else begin
out[0]<=data[7];
out[1]<=data[6];
out[2]<=data[5];
out[3]<=data[4];
out[4]<=data[3];
out[5]<=data[2];
out[6]<=data[1];
out[7]<=data[0];
end
end
endmodule
