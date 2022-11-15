// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
wire [7:0] out_next0,out_next1,out_next2;
assign out = (load) ? data : (data<<amount) + (data>>(8-(amount%8)));// case of rotated data, else simply left shifted
always@(posedge clk or posedge reset) begin
if(reset==1'b1)
out<=0;
else begin
out_next2 <= out_next1;
out_next1 <= outPipe;
outPipe <=out;
end
 end
endmodule
