// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
begin: applicationscope
if(reset == 1'b0)
out <= 8'b01111111; // when reset is low initial the output data to "10111111"
else if(load) // when load is high
out <= data;
else begin
out[0] <= out[7];
for(int i = 1; i < 8; i = i+1)
out[i] <= data[7-i];
end
end
endmodule
