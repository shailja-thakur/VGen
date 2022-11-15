// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [4:0] out_reg;
always begin
	// when load is high, load data to out
	if (load) begin
		out_reg <= data;
	end else begin
		// rotate the out register followed by left shift the out register by amount bits
		out_reg[0] <= out_reg[amount];
		out_reg[1] <= out_reg[amount+1];
		out_reg[2] <= out_reg[amount+2];
		out_reg[3] <= out_reg[amount+3];
		out_reg[4] <= out_reg[amount+4];
		out_reg[5] <= out_reg[amount+5];
		out_reg[6] <= out_reg[amount+6];
		out_reg[7] <= out_reg[amount+7];
	end
end
endmodule
