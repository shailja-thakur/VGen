// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @* begin
if(res || load) begin
if(load) begin
	if(amount > 1) begin
		out = 0; // load the out register with zeros
	end
	if(amount == 0) begin
		out = data;
	end
	else begin
		if(amount==1) begin
			out = out << 1; // left shift
		end
		if(others) begin
			out = out << amount; 	// rotate
		end
	end
end
else begin
	out = data;
	if(others) begin
		out = out << amount; 	// rotate
	end
end
end
end
endmodule
