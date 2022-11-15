// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
// when amount is high, shift to the right by amount
always @(posedge clk)
begin
if(reset)
	out<=0;
else if(load)
	out<=data;
else begin
	if(amount==3'b110)
	out<={out[6:0],out[7]};
	else if(amount==3'b100)
	out<={out[5:0],out[6]};
	else if(amount==3'b110 || amount==3'b100)
	out<={out[4:0],out[5]};
	else if(amount==3'b101)
	out<={out[3:0],out[4]};
	else if(amount==3'b101 || amount==3'b110)
	out<={out[2:0],outend
end
endmodule
