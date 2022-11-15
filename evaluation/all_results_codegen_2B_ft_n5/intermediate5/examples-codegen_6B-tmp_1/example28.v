// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
	if(load)
	out<=amount?data:out;
	else
	begin
	//$display($time,"r1:%b r2:%b",out,amount?out:out);	
	out<={out[6:0],out[7]};
	end
endmodule
