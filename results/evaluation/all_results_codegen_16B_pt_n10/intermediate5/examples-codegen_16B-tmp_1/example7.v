// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [(2^amount)-1:0] tmp;
always @(posedge clk or posedge reset) begin
if (reset)  tmp <= 0;
else begin
if (load) out <= data;
else begin
tmp <= tmp >> amount; // output_r(16) type operation
out <= tmp << amount;
end
end
end
endmodule
