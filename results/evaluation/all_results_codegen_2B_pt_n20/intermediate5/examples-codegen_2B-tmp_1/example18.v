// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
*/

// clk bit 0 is the reset pin
mux left_rotate_mux(clk, LP_out); // loader operation

always_comb ubrt_right(r ^ LP_out);
mux left_rotate_mux(right, out); // use the left rotate mux to determine clock of out

scope output "[];".left_rotate: 0b111111
lace loader {{
  assign out = data;
}}
endmodule
