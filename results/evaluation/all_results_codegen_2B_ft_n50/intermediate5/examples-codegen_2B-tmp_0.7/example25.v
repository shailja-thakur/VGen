// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk, negedge reset)
begin
if(reset == 1'b0)
out <= 8'd0;
else
begin
if(load == 1'b1)
out <= data;
else if(load == 1'b0)
out <= {out[7:0],1'b0};
end
end
endmodule
