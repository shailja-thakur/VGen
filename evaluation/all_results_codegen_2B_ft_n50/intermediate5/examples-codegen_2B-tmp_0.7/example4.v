// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// out is the data shifted left
always @(posedge clk) begin
	if (reset) begin
	out <= 8'd0;
	end
	else begin
	if (load) begin
	out <= data;
	end
	else begin
	case(amount)
	3'd0: out <= {data[7:0],out[1:8],out[7:8]};
	3'd1: out <= {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]};
	3'd2: out <= {out[0],out[1],out[2],out[3]};
	3'd3: out <= {out[0],out[1],out[3],out[2],out[4],out[5],out[6],out[end
end
end
endmodule
