// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or reset)
begin
if(reset==1'b1)
out<=8'b0;
else if (load== 1'b1)
	out <= data;
else if (amount!= 3'b100)
	out &= ~( 8'b0 << amount);
else 
out <<= 8'b1;
end	
endmodule
