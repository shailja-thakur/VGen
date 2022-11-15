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
  if (load)
  begin   
	  out <= data;
	  out <<= amount;
  end
end

// block memory models

// memory interface model
load_blocks: reg #1 [7:0];

r1: reg #1 [7:0];
block load_blocks_dq {
  chunk one;
} r1;

mem:
logic [2:0] r_load_blocks_dq = 0;
reg r_load_blocks_dq;

always @(posedge clk or negedge reset)
  if (r_load_blocks_dq == seq_time(1,1,0))
	 load_blocks_dq <= 0 | r_load_blocks_dq;
  else if (r_load_blocks_dq ==endmodule
