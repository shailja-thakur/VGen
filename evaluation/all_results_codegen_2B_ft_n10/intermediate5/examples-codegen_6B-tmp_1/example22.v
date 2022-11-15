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
begin
if(load || reset)
	out <= amount[2:0]<=8'b0000_0000;
else begin
	// positive amount= actual shifted material, negative amount=actual shift left material
	out <= out<<amount;
	out <= out>>amount;
	end
end
endmodule
