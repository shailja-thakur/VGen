// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or posedge reset)
begin
if (reset)
out <= 0;
else if (load)
out <= data;
else if (amount == 3'b000)
out <= {out[0],out[7:1]};
else if (amount == 3'b001)
out <= {out[1:0],out[7:2]};
else if (amount == 3'b010)
out <= {out[2:0],out[7:3]};
else if (amount == 3'b011)
out <= {out[3:0],out[7:4]};
else if (amount == 3'b100)
out <= {out[4:0],out[7:5]};
else if (amount == 3'b101)
out <= {out[5:0],out[7:6]end
endmodule
