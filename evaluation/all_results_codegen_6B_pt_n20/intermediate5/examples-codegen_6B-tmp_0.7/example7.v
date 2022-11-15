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
  out <= load ? data : (reg >> load) << (reg.length() - load);
// when reset is high, clear out register
always @(posedge clk)
  if (reset) begin
    out <= 0;
  end
end

// right shift and rotate operation
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
always @(posedge clk)
  out <= load ? data : (reg << (reg.length() - amount)) >> amount;
// when load is high, load data to out
// otherwise rotate the out register followed by right shift the out register by amount bits
always @(posedge clendmodule
