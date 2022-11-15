// This is a RAM module
module ram #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    output [7:0] q
);
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
always @(posedge clk)
#5
    if (we) // bits 0-1 == 01 then write
      ram[((addr>>3) & (2**ADDR_WIDTH-1))] = data;
  endcollector ram_wr;
  LSW rsw; // bits 14:  0= read 
  LSW wsw; // bits  7:       1= write
  SWDMD_<SUB_TYPE> also_swdmd;

always @(posedge clk)
endcollector ram( ram_wr, rsw, wsw, also_swdmd)
  if (rsw) ram_wr[1:0];
  else if (wsw) ram[((addr>>3) & (2**ADDR_WIDTH-1))] = wsw[3:0];
endcollectorendmodule
