// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// and then load the new data to the out register
always @(posedge clk)
begin
if (load)
out <= data;
else
begin
out <= {out[6:0],out[7]};
if (amount == 3'b000)
out <= {out[0],out[7:1]};
else if (amount == 3'b001)
out <= {out[1],out[7:2]};
else if (amount == 3'b010)
out <= {out[2],out[7:3]};
else if (amount == 3'b011)
out <= {out[3],out[7:4]};
else if (amount == 3'b100)
out <= {out[4],out[7:5]};
else if (amount == 3'b101)
out <= {out[5],outend
end
endmodule
