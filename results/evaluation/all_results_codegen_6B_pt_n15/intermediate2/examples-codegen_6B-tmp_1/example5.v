// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk) q <= 1 + (reg == 12 ? 1 : 0);

//----------------------------------------------------------------------

#include "../include/v1model.bare.h"

module cnt(
    input clk,
    input reset,
    output reg_secret [5:0] p
);
  
  reg [3:0] a, b, c, d, e;
  // hazard
  always @(posedge clk or (not reset) or not negedge clk) write_to_mp_a = a;
  always @(posedge clk or (not reset) or reset) write_to_mp_b = b;
  always @(posedge clk or (not reset) or not data_active or data_active) write_to_mp = c;
  always @(posedge clk or (notendmodule
