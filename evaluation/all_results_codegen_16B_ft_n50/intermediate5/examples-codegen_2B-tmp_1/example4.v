// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always@(posedge clk)
begin
	 out <=
	 ((load)?data:{amount, out[1],out[2],out[3],out[4],
	 out[5],out[6],out[7],out[8]}) &
	 {8{(^amount)}};
end
//when reset is high, reset all to initial values
reg [7:0] reg_a;
always@(posedge clk)
begin
	 if (reset)
	 begin
	 reg_a <= 8'h2D;
	 out <= 8'h2D;
	 end
	else
	 wr <= (load)?data:reg_a;
end

endmodule
