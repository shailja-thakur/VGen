// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
begin
if (reset == 0) begin 
load: begin
  if (load)
  {
    out = data;
  }
  else if (amount[1] == _bsf(amount[0],amount[0]-1))
  {
    out = data[2:0];
    _shift_left_sub(data[2:0],_modulo(amount[0],8),1,data[2:0])
  }        
  else if (amount[2] == _bsf(amount[1],amount[1]-1))
  {
    out = data[2:1];
    _shift_left_sub(data[2:1],_modulo(amount[1],8),1,data[2:1])
  }        
  else if (amountend
end
end
endmodule
