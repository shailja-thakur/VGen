// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg out<2:0> ;
regout INTLOGIC clk,reset;
always @(posedge clk)
  if (load) OUTPUT (index) = load & data;
  else out <<= amount;
end

// This specifies the number of registers of 'out' in the pipeline
#define nr_registers 5

// For comutation clusters
#define combo(...) \
  out__'combo_T1Eout' <= out & load; // lnk high, shift out as they arrive

// For grouping them at the delay line to reuse the dictionaries
#define group(...) \
  out0 <= out & clk; // lnk low, shift out as they arrive

module rx(clk,reset,amount,sw,din,rst,out);
  reg out<7:0> out0;endmodule
