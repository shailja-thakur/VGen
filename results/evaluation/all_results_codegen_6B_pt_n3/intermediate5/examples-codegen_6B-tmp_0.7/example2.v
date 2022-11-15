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
begin
  if(load) out <= data;
  else
  begin
    out <<= amount;
    out |= data << amount;
  end
end

// The following module implements a right shift and rotate operation.
// The right shift operation is implemented as an LSB-first register shift.
// The rotate operation is implemented as a left shift followed by an LSB-first register shift.
// The amount register is used for the right shift operation.
// The amount register is also used for the left shift operation.
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotateendmodule
