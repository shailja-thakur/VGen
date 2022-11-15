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
  if (load) out <= data;
  else
  begin
    out <<= amount;
    out(7) <= out(2) << (amount-1);
  end
end

module dflip_load(clk,reset,load,data,load_out,out);
input clk,reset;
input [2:0] load;
input [7:0] data;
output reg [7:0] load_out;
output reg [7:0] out;
// when load is high, load data to load_out
// otherwise rotate the load_out register followed by left shift the load_out register by amount bits
always @(posedge clk or negedge reset)
  if (load) load_out <= data;
  else
  begin
    load_outendmodule
