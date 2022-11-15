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
begin : ALU_LSR_8
	if(reset)
	begin
	//reset to initial ram values
	out=0;
	end
	else if(load)
	// load to the output register
	begin
	out=data;
	end	
	else
	begin // Do't do anything to the data register
	end
end
always@(out) // properly left shifting
begin
	case(amount)
	//rotate left by 1
	begin
	//rotate right by 1
	0: out = {out[6:0],out[7]};
	
	//rotate right by 2
	1: out = {out[5:0],out[7:6]};
	
	//rotate right by 3
	2: out = {out[end
endmodule
