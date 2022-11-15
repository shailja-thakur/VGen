// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always begin
  if(load)
    out = data;
  else begin
    if(amount == 0) begin
      out = data;
    end
    else begin
      out = {data,(data && ({data % 2})) || ((data >> amount) & 1)};
    end
  end
end
// register implementation
reg [4:0] counter;
// left rotate with load
assign out = {left_rotate(clk,reset,2'b00,counter[4]), counter[4] = (counter[3] >> 1) | (reset), counter[3] = counter[2] >> 1, counter[2] = counter[1] >> 1, counter[1] = counter[0] >> 1, counter[0]};
endmodule
