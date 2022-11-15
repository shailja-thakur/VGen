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
	if (reset) out <= 8'b0; // reset requires a left shift too
	else begin 
	if(load == 1'b1) out <= data;
	else begin
	out <= {out[6:0],out[7]};
	out[7:1] <= out[6:0]; // rotate by specified amount
	if(amount == 3'b111) out <= 8'b0; // when rotating by all avaliable bits out = 0
	end
	end
end
endmodule
