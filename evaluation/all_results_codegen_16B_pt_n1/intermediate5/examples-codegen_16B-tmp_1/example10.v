// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk or posedge reset)
begin
if(reset)
out <= data;
else if(load)
out <= data;
else if(amount > 0 && amount < 5)
out<= data << amount;
else if(amount > 5)
out<= out >> amount;
end
endmodule
