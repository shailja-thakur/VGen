// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
  if (reset) begin
    load = 0;
  end
  if (load == 1) begin
    out = data;
  end
  if (amount == 0) begin
    out = data;
    load = 0;
  end
  if (amount == 1) begin
    out = data;
    load = 1;
  end
  if (amount == 2) begin
    out = data;
    load = 1;
    data = data << 1;
  end
  if (amount == 3) begin
    out = data;
    load = 1;
    data = data << 2;
  end
  if (amount == 4) begin
    out = data;
    load = 1;
    data = data << 3;
  end
  if (amount == 5) begin
    out = dataend
endmodule
