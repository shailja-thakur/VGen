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
  // TODO: prevent multiple simultaneous loads (load and rotate)
  out <= load & (load << amount) & data;
end

// NAND gate
module nand_gate(clk,reset,data,load,out,enable);
input clk,reset;
input [7:0] data;
input load;
output reg out;
reg [7:0] out_tmp;
// when load is high, load data to out_tmp register
// when load is low, load the out_tmp register followed by NAND the out_tmp register with data
always @(posedge clk or negedge reset)
  out_tmp <= load & data;
  // when enable is high, NAND out_tmp with data
  enable <= out_tmp & ~out_tmp;
end

endmodule
