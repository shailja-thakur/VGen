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
  if (load) out <= data; else out <<= amount;
end

// left shift operation with zero saturation for registers like RAM counters or roll-overs
// this one uses data source accumulator (A) as input, generates a carry,
// left shifts the input by one bit and returns the shifted register and accumulator.
module lshift(clk,reset,out);
input clk,reset;
input accumulator;
input output [7:0] out;
output reg [7:0] reg_data;
// outputs are generated in the EIF system - out sinks are input only
// this three module instances are needed to ensure the signals are passed
always @(posedge clk or negedge reset) begin
  if (accumulator) reg_data = out; else reg_data <<= 1;end
endmodule
