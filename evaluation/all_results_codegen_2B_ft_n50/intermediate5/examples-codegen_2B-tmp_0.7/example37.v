// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk,reset)
begin
if (reset == 1'b1)
out <= 8'b00000001;
else if(load)
out <= data;
else if(amount == 3'b000)
out <= {1'b0,out[7:1]};
else if(amount==3'b001)
out <= {out[6:0],1'b0};
else if(amount==3'b010)
out <= {1'b0,out[6:0],1'b0};
else if(amount==3'b011)
out <= {out[5:0],1'b0,1'b0};
else if(amount==3'b100)
out <= {1'b0,out[5:0],1'b0,1'b0};
else if(amount==3end
endmodule
