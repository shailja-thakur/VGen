// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or posedge reset) begin
if(reset) out <= 0;
else if(load) out <= data;
else begin
out[0] <=data[7];
out[1] <=data[6];
out[2] <=data[5];
out[3] <=data[4];
out[4] <=data[3];
out[5] <=data[2];
out[6] <=data[1];
out[7] <=data[0];
//shift left
if(amount>1)
begin
out[0] <=out[7];
out[1] <=out[0];
out[2] <=out[1];
out[3] <=out[2];
out[4] <=out[3];
out[5] <=out[4];
out[6] <=out[5];
outend
end
end
endmodule
