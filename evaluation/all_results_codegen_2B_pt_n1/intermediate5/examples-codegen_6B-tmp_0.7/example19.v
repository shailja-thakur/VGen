// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset) begin
  if (load) out <= data;
  else
    out <<= amount << (8 - amount);
end

// Report whether a bit is set or not.
function is_set(clk,reset,bit,load,out);
input clk,reset;
input [2:0] bit;
input load;
output reg out;
always @(posedge clk or negedge reset) begin
  if (load) out <= bit;
  else out <= 0;
end

// Test a bit in a register
function test(clk,reset,bit,load,out);
input clk,reset;
input [2:0] bit;
input load;
output reg out;
always @(posedge clk or negedge reset) begin
  if (load) outend
endmodule
