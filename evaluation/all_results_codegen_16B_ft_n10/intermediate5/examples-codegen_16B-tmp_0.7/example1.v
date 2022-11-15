// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
	// when reset is high, output is zero
	out<=0;
	end
	else if(load)
	begin
	// when load is high, load data to out
	out<=data;
	end
	else
	begin
	//when not in reset or load state, rotate data, and left shift data by amount bits
	out<= (data << amount) | (data >> (8-amount));
	end
end
endmodule
