// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits



always@(posedge clk or reset)
begin
	if (reset==1'b0) out<=0;
	else
	begin
	
	if (load==1'b1) out<=data;

	
	else if (amount>0)
	begin
	out={{amount{out[7]}},out};
	end
	else
	begin
	out=out;
	end
	
	end
end
	
endmodule
