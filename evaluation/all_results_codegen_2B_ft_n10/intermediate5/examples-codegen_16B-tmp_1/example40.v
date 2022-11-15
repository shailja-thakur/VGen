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
if (reset)
begin // reset case
	out <= 8'b0;
// load high case
// every transfer period (10ns)
end
else if (load)
	out <= data; // transfer the data
else
	begin
	if (amount>0) // if amount is 0, no rotation is needed
	begin
	// another transfer period (10ns)
	out <= out << amount; // rotate the out register by the value of amount
	end
else
begin
// this is subtraction operation
out = out <<(abs(amount));
end
// deassert load at every 24th bit of rotation
if (load&&out[7]==1'b1)
end
endmodule
