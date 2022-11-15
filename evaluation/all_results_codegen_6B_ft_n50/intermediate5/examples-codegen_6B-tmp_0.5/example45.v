// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
begin
	if(reset)
	begin
	out <= 0;
	end
	else
	begin
	if(load)
	begin
	out <= data;
	end
	else
	begin
	if(amount==3'b110)
	begin
	out <= {out[6:0],out[7]};
	end
	else if(amount==3'b101)
	begin
	out <= {out[5:0],out[6]};
	end
	else if(amount==3'b100)
	begin
	out <= {out[4:0],out[5]};
	end
	else if(amount==3'b011)
	begin
	out <= {out[3:0],out[4]};
	end
	elseend
end
end
endmodule
