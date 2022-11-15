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
if (load) 
out <= data;
else
if (amount == 3'b001)
out <= {1'b0,data[7:1]};
else if (amount == 3'b010)
out <= {1'b0,data[7:2]};
else if (amount == 3'b011)
out <= {1'b0,data[7:3]};
else if (amount == 3'b100)
out <= {1'b0,data[7:4]};
else if (amount == 3'b101)
out <= {1'b0,data[7:5]};
else if (amount == 3'b110)
out <= {1'b0,data[7:6]};
else if (amount == 3'b111)
out <= {1end
endmodule
