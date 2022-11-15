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
  case (load):
    out = data;
    break;
    
// rotate the in register by amount bits
always @(posedge reset)
  case (reset):
    out = rotate(data, amount);
    break;
    
// rotate the in register by amount bits
always @(posedge clk)
  case (amount):
    out = rotate(data, amount);
    break;
    
// when operation is load then load data from in register
always @(posedge clk)
  case (load):
    data = in;
    break;
    
// when operation is not load then rotate the in register by amount bits
reg [7:0] rotation;
always @(posedge reset)
  case (reset):
    out = rotate(data, amount);
    break;
    
//endmodule
