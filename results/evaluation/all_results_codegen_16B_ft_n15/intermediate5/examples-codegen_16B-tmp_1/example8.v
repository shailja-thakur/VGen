// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
// when load is 0, internal storage is cleared
always @ (posedge clk or posedge reset)
begin
	if(reset)
	begin
	// do nothing
	end
	else
	begin
	case(load)
	0: out <= data;
	1:
	begin
	out[7:data[0]+amount] <= out[0];
	// rotate left
	out[data[0]+amount-1:0] <= out[data[0]+amount:1];
	out[0+amount-1:data[0]==0?amount:data[0]+amount] <= out[1+amount-1:1];	//if output is high from normal shift, create one high bit and leave it there
	end
	end
	end
end
endmodule
