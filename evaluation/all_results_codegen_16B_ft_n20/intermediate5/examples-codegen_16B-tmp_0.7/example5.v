// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk, posedge reset) begin
if(reset)
out <= 0;
else begin
if(load)
out <= data;
else begin
out <= {out[6:0],out[7]^out[2:7]};
out[7:0]<= {out[7:1],out[7:7]};
end
end
end
endmodule
