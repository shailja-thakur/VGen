// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// if amount = 0, data and q and d are same
assign q = {1'b1,{amount, 1'b1} }; 
always @ (posedge clk or resethand)
begin
if(reset)
out <= {8'b0, 1'b1};
else if(load) 
out <= data;
else
out <= q;
end
endmodule
