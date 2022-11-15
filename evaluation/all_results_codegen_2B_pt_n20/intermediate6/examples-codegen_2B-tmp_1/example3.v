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
// assign the ram value at address addr to q when we is low, else modulo q with range (0...31)
#code
void worker()
{
  wire qa8 = q[7:0] | (q[15:8] << 8) | (q[23:16] << 16)
  wire ql8 = q[7:0] | (q[15:8] << 8) | (q[23:16] << 16);
  rea d, a, ws, w, we, clk;
  WS <= 1;
  we <= w;
  clk <= 0;
  while(!ts && !active && !inst && ws > 0)
    {
      nop;
    }
  while(clk == 0)
    {

      d[0] = we[0] ? [0:7] : clk[0];
      d[1endmodule
