// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk )
begin
// implement as always block
if (reset | load)
out = 8'b0;
else if (amount == 3'b 111)
case (amount)
3'b000 : begin out = data; end
3'b001: begin out = {data[4],data[7],data[2],data[3]}; end
3'b010: begin out = {data[5],data[7],data[3],data[4]}; end
3'b011: begin out = {data[6],data[7],data[4],data[5]}; end
3'b100: begin out = {data[7],data[7],data[5],data[6]}; end
3'b101: begin out = {data[0],data[7],data[6],data[7]}; end
end
endmodule
