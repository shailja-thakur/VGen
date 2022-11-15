// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk) begin
 if (reset) end
 else begin
 if (load) begin
out <= data;
end
 else begin
for(i=0;i<8;i=i+1) begin
for(j=7;j>-1;j=j-1) begin
	out[j] <= out[j-1];
 end
 out[0] <= amount[0];
end
end
end
endmodule
