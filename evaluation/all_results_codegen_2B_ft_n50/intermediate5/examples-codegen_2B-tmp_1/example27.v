// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@ (posedge clk or negedge reset)
reset var if(reset==1);
if(clk == 1) begin
	out <= reset var;
end
else begin
	if(load) out <= data;
	else begin
genvar i;
generate
for(i=0;i<8;i=i+1)
	begin : vartree
	if(amount==i) begin
	assign temp[i] = out[i];
	assign out[i] = ~out[i];
	end 
	end
end
end
endmodule
