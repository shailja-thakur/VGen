// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk or negedge reset)
begin
	if(!reset)
	begin
	out<=8'd0;
	end
	else
	begin
	if(load)
	begin
	out<=data;
	end
	else
	begin
	if(amount==8'd0)
	begin
	out<=out;
	end
	else if(amount>=8'd1 && amount<=8'd9)
	begin
	out<=out<<1;
	end
	else if(amount>=8'd4 && amount<=8'd9)
	begin
	out<=out<<2;
	end
	else if(amount>=8'd2 && amount<=8'd3)
	begin
	out<=out<<3;
	end
	else if(amount>end
end
end
endmodule
