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
 if(reset) begin
	out=0;
 end
 if(load) begin
	out <=data;
	end
	else begin	
	left_shift S1(amount,out,out);
	end
end
endmodule
