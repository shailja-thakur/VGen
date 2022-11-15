// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk ,negedge reset)
//integer rotright = 0;
reg [2:0] counter;
begin
if(load)
//out = data;
out <= data;
else
begin
//out = {rotright,out[7:1],out[0]};
out = out >> amount;
//out = out << amount;
end
end
always @ (load or reset )
//begin
//if(reset)
//rotright = 0;
//else
//begin
//rotright <= rotright + 3'b1;
//end
//end
always @ (load or reset )
//begin
if(reset)
counter = 0;
else
begin
counter <= counter + 3'b1;
end
//end
endmodule
