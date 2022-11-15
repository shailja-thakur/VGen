// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// both left_shift and left_rotate are done parallelly
reg [2:0] rotate;
always @(posedge clk)
if(reset == 1) begin
  rotate <= 0;
end
else begin
  if (load == 1) begin
    out <= data;
  end
  else begin
    rotate <= rotate + amount;
    if ((rotate >= 8) || (rotate < 0)) begin
      out <= 0;
    end else begin
      out <= data;
      out = data << rotate; //shift
      out = out >> (8 - rotate); //right shift
    end
  end
end
endmodule
