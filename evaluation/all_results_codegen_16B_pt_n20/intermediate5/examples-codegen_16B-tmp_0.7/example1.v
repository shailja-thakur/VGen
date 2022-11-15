// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @* begin
  if (load) begin
    out = data;
  end
  else begin
    out = (data << amount) | (out >> (8-amount));
  end
end
void main() {
  // in order to write the out register, we must be in idle state
  // in order to write the out register, we need to load data to it
  // the data to be loaded is the right shifted out register
  // the out register is shifted by amount bits while the out register is loaded
  // we do not have to worry about having a load to an empty register
  // the final result is that we just need to shift out register right by amount bits
  // the final result is that we just need to shift out register left by amount bits
  // the final result is that we just need to shift out register left by amount bits
  // the final result is thatendmodule
