// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk)
begin
if(reset)
out=0;
else if(load)
out=data;
else begin
// rotate left
case(amount)
3'b000: // no rotation
begin
out[0]=out[7];
out[7]=out[1];
out[1]=out[6];
out[6]=out[2];
out[2]=out[5];
out[5]=out[3];
out[3]=out[4];
out[4]=out[0];
end
3'b001: // rotate left 1 bit
begin
out[0]=out[1];
out[1]=out[2];
out[2]=out[3];
out[3]=out[4];
out[4]=out[5];
out[5]=out[6];
out[6]=end
end
end
endmodule
