// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits
always @(posedge clk or posedge reset)
begin
if (reset)
out <= 0;
else if (load)
out <= data;
else begin
out[7:amount] <= out[6:0];
out[6:0] <= out[7:amount];
end
end
endmodule
