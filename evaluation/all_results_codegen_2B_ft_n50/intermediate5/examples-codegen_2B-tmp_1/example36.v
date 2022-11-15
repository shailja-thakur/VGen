// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk,posedge reset)
begin
if(reset)
out <= 0;
else if(load)
out <= data;
else begin
out[0] <= out[7];
out[1] <= out[0];
out[2] <= out[1];
for(int i=0;i<5;i++)
out[i+1] <= out[i];
for(int i=0;i<6;i++)
out[7] <= out[i];
end
end
endmodule
