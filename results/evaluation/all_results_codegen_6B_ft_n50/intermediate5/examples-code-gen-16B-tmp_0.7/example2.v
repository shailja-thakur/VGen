// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits
always @(posedge clk, posedge reset)
begin
	if (reset == 1)
	begin
	// reset
	out <= 0;
	end
	else if (load == 1)
	begin
	out <= data;
	end
	else if ( |amount )
	begin
	out <= {out[6:0],out[7]};
	out[7:1] = out[6:0];
	end
	else
	begin
	out[7:1] = out[6:0];
	end
end
endmodule
