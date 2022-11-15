// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk,posedge reset)
begin
//if reset is high
if(reset==1'b1)
out<=8'b0;
// if load is high, load data to out
else if(load==1'b1)
out<=data;
// otherwise rotate the out register followed by left shift the out register by amount bits
else
begin
//out[0]<=out[1];
//out[1]<=out[2];
//out[2]<=out[3];
//out[3]<=out[4];
//out[4]<=out[5];
//out[5]<=out[6];
//out[6]<=out[7];
//out[7]<=out[0];
out<=
	(amount==0)?out:
	(end
end
endmodule
