// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk) begin
if(load) begin	
	out = data;	
end
else	
	begin	
	for (int i=0;i<=amount-1;i=i+1)
	begin
	out[i]<=out[7-i];
	end
	for (int i=0;i<=pres;i=i+1)
	begin
	out[7-i]<=out[i];
	end
	end
end
endmodule
