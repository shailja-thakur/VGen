// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk or negedge reset)
begin
	if (reset == 1'b0)
	begin
	// initialize the register as {"0000"amount times 0}
	out = {{amount},{8'd0}};
	end else if (load == 1'b1) begin
	// load the data to out; otherwise rotate or left shift
	// rotate or left shift
	out = out;
	end else begin
	// rotate or left shift
	assign out = {out[amount-2:0], out[7:1]};
	end
end
endmodule
