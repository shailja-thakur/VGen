// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
	always @ (posedge clk)
	begin
	if(amount != 0)
	out = { shift_left_reg, GND_driver };
	if(load == 1'b0)
	out = data;
	end
	always @ (posedge clk)
	if(load)
	begin
	shift_left_reg <= { 1'b0, counter };#25
	end
	else
	begin
	shift_left_reg <={ 1'b0, shift_left_reg[4:1];#10
	end
endmodule
