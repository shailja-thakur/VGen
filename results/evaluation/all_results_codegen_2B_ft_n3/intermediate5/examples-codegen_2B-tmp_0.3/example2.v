// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk)
begin
if (reset)
out <= 8'b0;
else if (load)
out <= data;
else if (amount == 0)
out <= out;
else if (amount == 1)
out <= {out[0],out[7:1]};
else if (amount == 2)
out <= {out[1:0],out[7:2]};
else if (amount == 3)
out <= {out[2:0],out[7:3]};
else if (amount == 4)
out <= {out[3:0],out[7:4]};
else if (amount == 5)
out <= {out[4:0],out[7:5]};
else if (amount == 6)
out <= {out[5:0],out[7:6]};
else if (amountend
endmodule
