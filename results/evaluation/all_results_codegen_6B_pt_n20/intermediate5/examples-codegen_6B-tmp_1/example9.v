// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge load) load_output(load_message,sign);
always @(posedge clk or negedge data) data_0_out(load_message,out);
// logic for out going high
  if (data == data_0_out) out > 0;
// logic for out going low
  if (data == load_message) out < out_load;
endmodule
