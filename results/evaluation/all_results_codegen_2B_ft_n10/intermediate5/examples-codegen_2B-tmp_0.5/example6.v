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
if (reset)
out <= 0;
else if (load)
out <= data;
else if (amount == 0)
out <= out;
else if (amount == 1)
out <= {1'b0,out[7:1]};
else if (amount == 2)
out <= {1'b0,1'b0,out[7:2]};
else if (amount == 3)
out <= {out[6:0],1'b0};
else if (amount == 4)
out <= {out[7],1'b0,out[7:1]};
else if (amount == 5)
out <= {1'b0,out[7:1]};
else if (amount == 6)
out <= {out[7],out[7:1]};
else if (amountend
endmodule
