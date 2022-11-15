// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
  if(!load) begin
    out = (data << amount) | (out >> (sizeof(data)*8-amount));
  end else begin
    out = data;
  end
end
// register definition
reg [7:0] out;
// wire definition
wire [7:0] in;
// test bench
initial begin
  in = 0;
  out = 0;

  // set load to high
  assert reset = 0;
  assert load = 1;

  // wait for some time
  wait(15);

  // set amount to 1 bit
  assert amount = 0;
  assert reset = 0;
  assert load = 1;

  // wait for some time
  wait(15);

  // set amount to 2 bit
  assert amount = 1;
  assert resetend
endmodule
