// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
begin
if (reset) out <= 8'd0;
else
if(load || (amount == 3'b001 && out[0] == 1'b0)) out <= data;
else begin
out[ 7: 0] <= out[ 6: 0];
out[ 8] <= 1'b0;
end
end
endmodule
