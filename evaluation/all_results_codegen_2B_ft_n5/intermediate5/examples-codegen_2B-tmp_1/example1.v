// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] reg_out;
always @ (posedge clk)
 bufif1
if (reset || load)
 out = data;
 else if(load)
out = data;
else out <= {reg_out[2:0], reg_out[7:3]};
endmodule
