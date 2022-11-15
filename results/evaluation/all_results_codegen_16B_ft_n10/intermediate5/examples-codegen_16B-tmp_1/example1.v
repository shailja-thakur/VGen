// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or posedge reset)
begin
	if(reset == 1'b1 && load == 1'b1) 
	begin	
	 out <= data;
	end
	else if(load == 1'b1 && reset == 1'b0)
	begin
	out <= {data[0+:amount],data[7-:8]};
	end
	else if(load == 1'b0 && reset == 1'b0)
	begin	
	 out <= left_rot(out,amount);
	end
end
endmodule
