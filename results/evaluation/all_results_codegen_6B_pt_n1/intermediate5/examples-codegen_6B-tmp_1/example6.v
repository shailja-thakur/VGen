// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk)load<=out[7]&&amount<4'b0110;
always @(posedge clk)
	begin
	if(reset)
	out<=8'b0;
	else if (load)begin
	out<={out[6:0],data};//shift right by aplenty of bit and concatenates it to the left of out
	end
	else 
	begin
	out<={out[6:0],out[7]};//shift right by aplenty of bit and concatenates it to the left of out
	end
	end
endmodule
