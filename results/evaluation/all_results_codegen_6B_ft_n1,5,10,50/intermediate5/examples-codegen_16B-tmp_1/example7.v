// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk or posedge reset)
begin
if (reset == 1'b1)
 out = 8'h00;
else if (load == 1'b1)
 out = data;
else
 begin
 if (amount == 3'b000) // rotate right
 out = { out [6:0], out[7] };
 else if (amount == 3'b001) // ((shift left) and (rotate right)) // ** bit subtracted from each carriage return stage as opposed to within the shifted words, this prevents erroneous x's from being displayed
 out = { out[7:1], out[0]};
 else if (amount == 3'b010)
 out = {out[4:1], out[0], out[7:5]};
 else if (amount == 3'b011)
 out = {out[1:0], out[7:end
end
endmodule
