// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk, posedge reset)
begin
	if(reset)
	begin
	// when reset is high, load '0' to the output (rotate by amount then load the out with '0')
	out <= '0';
	end
	else
	begin
	if(load)
	begin
	// when load is '1'
	// perform a left rotate
	// assign the left rotation output to its next left shift value
	// illustration on how this is accomplished is USEFUL for debugging purposes
	out <= left_shift(data,amount);
	end
	else
	begin
	// when no load is performed, we only perform a left shift, no rotation!
	// just rotate some more then do the left shift asociating with rotation.
	out <= left_shift(out, amount);
	end
	end
end
endmodule
