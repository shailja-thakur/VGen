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
// which is the "shift left" the output of the counter
// if the counter reaches 255 which is a shift right
// start to 0.
always@(posedge clk or negedge reset)
begin
if(!reset)
begin
shift_reg<=0;
shift_reg[7:0]<=8'b0;
shift_reg[7:0]<=8'b0;
shift_reg[7:0]<=8'b0;
shift_reg[7:0]<=8'b0;
end
else
begin
shift_reg<=shift_reg;
shift_reg[7:0]<=shift_reg[7:0];
shift_reg[7:0]<=shift_reg[7:0];
shift_reg[7:0end
end
endmodule
