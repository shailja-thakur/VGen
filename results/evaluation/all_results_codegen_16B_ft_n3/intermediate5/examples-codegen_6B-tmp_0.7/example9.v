// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or posedge reset)
begin
if(reset)
	out<=8'b0;
else if(load)
	out<={1'b0,data[6:0],data[7]};
else // shift left
	begin
	out<={out[5:0],out[6]};
	end
end
endmodule
