// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or posedge reset)
begin
	if(!reset) begin
	// reset
	out = 8'h00;
	end
	else	if(load)
	begin
	// load
	out = data;
	end
	else
	begin
	// rotate and left shift
	out = {out[6:0],out[7]};
	out = {out[0],out[7:1]};
	// add correction at the end of rotation
	// to had a 1 in the msb of the rotation instead of all 0
	out = out + {8'h01} + {8'h01} - {8'h00};
	end
end
endmodule
