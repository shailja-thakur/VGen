// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [23:0] temp;
reg out_register;
always @* begin
// when load is high, load data to temporary register
// if amount is zero, load data directly to output register
// else load data to left shifted temp register
	if ((!load) && (amount <= 48)) begin
    	temp = data;
 	end else begin
    	temp = data << amount;
	end
	out_register = (temp >> 1) | (temp[1:0] << 23);
 	out = out_register;
end

endmodule
