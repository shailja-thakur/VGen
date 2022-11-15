// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or reset)
begin
if (reset) 
out <= 8'b0;
else begin
if (load == 1)
out <= data;
else begin
if (amount == 7)
out <= {out[0],out[7:1]};
else
out <= {out[7-amount:1],out[0]};
end
end
end
endmodule
