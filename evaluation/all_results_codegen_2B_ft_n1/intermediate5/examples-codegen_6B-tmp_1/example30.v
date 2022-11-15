// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
if (load) out <= data;
else begin // why does this work
	for (int i = 0; i < 7;i++)
	begin
	out[i] = out[6-:7];
	end
	out[7-:7] <= {out[1],out[0],1'b0};
end
endmodule
