// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk)
begin
if (reset)
out <= 8'b0;
else if (load)
out <= data;
else if (amount == 3'b001)
out <= {1'b0,out[7:1]};
else if (amount == 3'b010)
out <= {1'b0,out[6:1]};
else if (amount == 3'b011)
out <= {1'b0,out[5:1]};
else if (amount == 3'b100)
out <= {1'b0,out[4:1]};
else if (amount == 3'b101)
out <= {1'b0,out[3:1]};
else if (amount == 3'b110)
out <= {1'b0,out[2:1]};
else if (end
endmodule
