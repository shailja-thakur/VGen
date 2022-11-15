// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk,reset)
begin
if (reset==1) begin 
out = {7'b0};
end
else if (load == 1) begin 
out <= data;
end
else if (amount != 0) begin 
case (amount)
3'b000: assign out = {data[3],data[7:4]}; // rotate left by 0
3'b001: assign out = {data[2],data[7:4]}; // rotate left by 1
3'b010: assign out = {data[1],data[7:4]}; // rotate left by 2
3'b011: assign out = {data[0],data[7:4]}; // rotate left by 3
3'b100: assign out = {data[7],data[7:4]}; // rotate left by 4
3'b101:end
end
endmodule
