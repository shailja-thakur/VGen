// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge load)
  out <= left_rotate(clk,reset, amount, data, load, out);
end

// the second module in the state machine consists of a shift register
// that outputs the bit shifted out from the shift register and the left
// shift left-rotate operation from the first module
//
// this operation is repeated until the shift register overflows
module shift_left_rotate(clk,reset,data,load,out);
input clk,reset;
input [2:0] data;
input load;
output reg [7:0] out;
always @(posedge load)
  if (out == 1)
    out <= load;
  else
    out <= left_rotate(clk,reset, data[7:0], out, out);
end

// the third module in the state machine consists ofendmodule
