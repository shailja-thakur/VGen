// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg[7:0] temp;
always @(posedge reset) begin
	if(reset) begin
		out <= 0;
		temp <= 0;
	end
	else begin
		temp <= data;
		case(amount)
			0 : begin
				out <= 1;
				out[0] := temp[1:0]
			end
			1 : begin
				out <= (temp[5:4] && pow2(3-load) && !amount_negative);
				out[0] := temp[7:6];
				out[1] := temp[3:2]
			end
			2 : begin
				out <= (0 && (temp[4] || pow2(3-load) && !amount_negative));
				out[0] := temp[6];
			end
			3 : begin
				out <= !(0 && (end
end
end
endmodule
