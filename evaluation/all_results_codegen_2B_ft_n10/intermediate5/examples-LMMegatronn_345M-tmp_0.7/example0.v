// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
reg [7:0] shift_reg;
reg [7:0] data;
// which is the rotate register
reg [7:0] out_shr;

always @(posedge clk or posedge reset)
begin
	if(reset)
		begin
			//from shifting out bit
			shift_reg <= 0;
			data <=0;
		end
	else
		begin
			//from shifting out bit
			shift_reg[7]<=data[7];
			shift_reg[6]<=data[6];
			shift_reg[5]<=data[5];
			shift_reg[4]<=data[4];
			shift_reg[3]<=data[3];
			shift_reg[2]end
end
endmodule
