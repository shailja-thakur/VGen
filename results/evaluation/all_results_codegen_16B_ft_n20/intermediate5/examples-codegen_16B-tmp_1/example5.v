// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk, negedge reset)
begin	
case(load)
1'b0:if(reset==1'b1)begin out={1'b0,{6{1'b0}}}; end
1'b1:begin
out={data,data[7:1]};
if(amount==3'b000)begin out={out[6:0],1'b0};end
else if(amount==3'b001)begin out={out[14:7],1'b0};end
else if(amount==3'b010)begin out={out[14:0],out[7:1]};end
else if(amount==3'b011)begin out={out[20:15],out[7:1]};end
else if(amount==3'b100)begin out={out[7:0],end
end
end
endmodule
