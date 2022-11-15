// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
if (reset) begin
out <= (otherwise data);
end
else begin
if (load) begin
out <= data;
end
else begin
out[(amount-1)*8 + 1:amount*8] <= data[8:1];
out[((amount-1)*8 + 3):((amount-1)*8 + 4)] <= data[7:0];
out[((amount-1)*8 + 2):((amount-1)*8 + 3)] <= out[((amount-1)*8 + 3):((amount-1)*8 + 4)];
out[((amount-1)*8 + 0):((amount-1)*8 + 1)] <= data[15:8];
out[((amount-1)*8 + 1):((amount-1)*8 + 2)] <= data[15:8];
endend
end
endmodule
