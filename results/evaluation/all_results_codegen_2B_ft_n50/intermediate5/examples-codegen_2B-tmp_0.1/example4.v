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
out <= 8'b0;
else if (load)
out <= data;
else if (amount == 3'b000)
out <= {data[0],data[7:1]};
else if (amount == 3'b001)
out <= {data[1],data[7:2]};
else if (amount == 3'b010)
out <= {data[2],data[7:3]};
else if (amount == 3'b011)
out <= {data[3],data[7:4]};
else if (amount == 3'b100)
out <= {data[4],data[7:5]};
else if (amount == 3'b101)
out <= {data[5],data[7:6]};
else if (amount == 3'b110end
endmodule
