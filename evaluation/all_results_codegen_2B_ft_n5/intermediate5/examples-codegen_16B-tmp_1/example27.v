// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] temp;
always @ (posedge clk)	begin
	if (reset || load )begin
//Implement in this always block the rotation and left shift operations
// this rotate from the first to the 31st bit and from the 31st to the 0th bit
//left shift the last 8 bits to the left by one through 2 rotations 
	out = temp;
	end
	else begin
	temp = data;
	if (amount == 0)begin 
	out = temp;	
	end
	else begin
	out = temp;
	if (amount == 15)begin	
	temp = temp << 8; 
	temp = temp + out;
	end
	else begin
	temp <= temp;
	out <= out;
	temp = temp << amount;
	end
	end
// when reset high, output is resetend
end
endmodule
