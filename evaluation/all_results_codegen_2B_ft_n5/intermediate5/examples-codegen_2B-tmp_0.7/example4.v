// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
begin
if(reset)
out<=8'b0;
else if(load)
out<=data;
else
begin
out<={data[7:0],data[15:8]};
out<={out[7:0],out[15:8]};
end
end
endmodule
