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
  out <= load ? load_data : (out << amount) | (out >> (7-amount));

// The above code runs on the FPGA. The following code runs on the host.

/*
 * The following code is the equivalent of the above code, but using
 * the Verilog function `left_rotate_reg` instead of the built-in
 * `left_rotate`.
 */

// left_rotate_reg(clk,reset,amount,data,load,out)
// left_rotate(clk,reset,amount,data,load,out);

//------------------------------------------------------------------------------
#include "systemc.h"
#include "test_left_rotate_reg.h"

SC_MODULE(module) {
  SC_CTOR(module) {}
endmodule
