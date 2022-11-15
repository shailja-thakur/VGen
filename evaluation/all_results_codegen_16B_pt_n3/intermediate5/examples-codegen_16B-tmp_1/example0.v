// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out,tmp;
always @* begin
//self load
if(load) begin
//right left shift and rotate operation
tmp=data;
for(int i=0;i<amount;i++) begin
  out=tmp;
  tmp=out<<1;
  if(tmp==0) begin
    out|=1;
  end
end
else begin
//left right shift and rotate operation
out=data<<amount;
tmp=out>>amount;
if(tmp==0) begin
  out|=data;
end
end
end

end
endmodule
